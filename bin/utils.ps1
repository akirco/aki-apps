function get_installer_info([string]$app) {
    $rootDir = $app.ToLower()[0]
    $parts = $app -split '/'
    $id = $parts -join '.'
    $versionList = [array]((Invoke-WebRequest -Uri "https://api.github.com/repos/microsoft/winget-pkgs/contents/manifests/$($rootDir)/$($app)").Content | ConvertFrom-Json  | ForEach-Object { $_.name } | Where-Object { $_ -notmatch '^\.' } | Sort-Object { try { [version]$_ }catch {} } -Descending)
    Write-Host "version: $($versionList[0])"
    $url = "https://raw.githubusercontent.com/microsoft/winget-pkgs/master/manifests/$($rootDir)/$($app)/$($versionList[0])/$($id).installer.yaml"
    Write-Host "URL:$url"
    $installer_yaml = Invoke-WebRequest -Uri $url

    $installer_info = ConvertFrom-Yaml $installer_yaml.Content

    # Write-Host $installer_info
    foreach ($_ in $installer_info.Installers) {
        $arch = $_.Architecture
        $type = [regex]::Match($_.InstallerUrl, '\.(\w+)$').Groups[1].Value
        $res = if ($type) { $arch + '_' + $type }else { $arch }
        if ($arch) {
            $installer_info.$res = $_
        }
    }
    $installer_info
}

function AddToPath {
    param (
        [Parameter(Mandatory = $true)]
        [string]$pathToAdd,

        [Parameter(Mandatory = $false)]
        [bool]$global = $false
    )

    function CheckPathExists {
        param ([string]$path, [EnvironmentVariableTarget]$target)
        $currentPath = [Environment]::GetEnvironmentVariable("Path", $target)
        return $currentPath.Split(';') -contains $path
    }

    function AddPath {
        param([string]$path, [EnvironmentVariableTarget]$target)

        if (-not (CheckPathExists -path $path -target $target)) {
            $currentPath = [Environment]::GetEnvironmentVariable("Path", $target)
            $newPath = if ($currentPath) { "$currentPath;$path" } else { $path }
            [Environment]::SetEnvironmentVariable("Path", $newPath, $target)
            Write-Host "Path added to $target environment variable."
        } else {
            Write-Host "Path already exists in $target environment variable."
        }
    }

    AddPath $pathToAdd ([EnvironmentVariableTarget]::User)

    if ($global) {
        AddPath $pathToAdd ([EnvironmentVariableTarget]::Machine)
    }

    $userPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
    $machinePath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
    $env:Path = ($userPath + ";" + $machinePath) -split ";" | Select-Object -Unique | ForEach-Object { $_ } -join ";"
}

function RemoveFromPath {
    param (
        [Parameter(Mandatory = $true)]
        [string]$pathToRemove,

        [Parameter(Mandatory = $false)]
        [bool]$global = $false
    )

    function CheckPathExists {
        param ([string]$path, [EnvironmentVariableTarget]$target)
        $currentPath = [Environment]::GetEnvironmentVariable("Path", $target)
        return $currentPath.Split(';') -contains $path
    }

    function RemovePath {
        param([string]$path, [EnvironmentVariableTarget]$target)

        $currentPath = [Environment]::GetEnvironmentVariable("Path", $target)
        if (CheckPathExists -path $path -target $target) {
            $newPath = ($currentPath.Split(';') | Where-Object { $_ -ne $path }) -join ';'
            [Environment]::SetEnvironmentVariable("Path", $newPath, $target)
            Write-Host "Path removed from $target environment variable."
        } else {
            Write-Host "Path not found in $target environment variable."
        }
    }

    RemovePath $pathToRemove ([EnvironmentVariableTarget]::User)

    if ($global) {
        RemovePath $pathToRemove ([EnvironmentVariableTarget]::Machine)
    }

    $userPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
    $machinePath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
    $env:Path = ($userPath + ";" + $machinePath) -split ";" | Select-Object -Unique | ForEach-Object { $_ } -join ";"
}
