$apiToken = $env:ApiToken 
$username = $env:Username
$apiUrl   = $env:ApiUrl

$appsUri = "https://$apiUrl/$Username/apps?apiToken=$ApiToken"
$appsCollection = Invoke-RestMethod -Uri $appsUri

Write-Output "Existing Apps"

Write-Output $appsCollection.apps.name

$jsonBody = @{Description = 'An Awesome New App'} | ConvertTo-JSON

$newAppName = 'NewApp004'


# $NewAppName var is in brackets because we don't want the ? character
# interpreted as a part of the variable name. It breaks the URI.
$params = @{
  Uri = "https://$apiUrl/$username/apps/${newAppName}?apiToken=$apiToken"
  Method = 'Put'
  ContentType = 'application/json'
  Body = $jsonBody
}

$returnValue = Invoke-RestMethod @params

Write-Output "App We Created"

Write-Output $returnValue.app.name
