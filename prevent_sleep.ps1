while ($true) {
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(1,1)
    Start-Sleep -Seconds 60
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(2,2)
}
