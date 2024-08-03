$results= Get-ChildItem -Path .\bucket\ -Recurse -Filter *.json | ForEach-Object  {
    $currentFile = $_
    $appName = $currentFile.name.Split('.')[0]
    $packageJson = Get-Content $currentFile.FullName -Raw | ConvertFrom-Json
    [PSCustomObject]@{
        App     = $appName
        Description = $packageJson.description
    }
} | Select-Object App, Description -Unique

$markdown = @"
| App | Description |
| --- | ------- |
"@

$results | ForEach-Object {
    $markdown += "| $($_.App) | $($_.Description) |
" }

$markdown | Out-File -FilePath .\output.md