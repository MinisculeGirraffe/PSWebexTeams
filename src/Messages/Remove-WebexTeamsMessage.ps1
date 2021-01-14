function Remove-WebexTeamsMessage {
    param (
        [Parameter(ValueFromPipelineByPropertyName,mandatory=$true)]
        [string]$id

    )
    $res = Invoke-RestMethod -Headers (Get-WebexTeamsCredential) `
        -ContentType "application/json" `
        -uri "https://webexapis.com/v1/messages/$id" `
        -body $body `
        -Method Delete
    return $res.items
}