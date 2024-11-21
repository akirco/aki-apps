function get_installer_info([string]$app) {
    $rootDir = $app.ToLower()[0]
    $parts = $app -split '/'
    $id = $parts -join '.'
    $versionList = [array]((Invoke-WebRequest -Uri "https://api.github.com/repos/microsoft/winget-pkgs/contents/manifests/$($rootDir)/$($app)").Content | ConvertFrom-Json  | ForEach-Object { $_.name } | Where-Object { $_ -notmatch '^\.' } | Sort-Object { try { [version]$_ }catch {} } -Descending)
    Write-Host "version: $($versionList[0])"
    $url = "https://raw.githubusercontent.com/microsoft/winget-pkgs/master/manifests/$($rootDir)/$($app)/$($versionList[0])/$($id).installer.yaml"
    Write-Host "URL:$url"
    $installer_yaml = Invoke-WebRequest -Uri $url -Verbose

    $installer_info = ConvertFrom-Yaml $installer_yaml.Content

    Write-Host $installer_info
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