Function WriteToFileMethodOne($FilePath,$LineToWrite = 'Write this to the text file') {
    if (Test-Path $FilePath) {
        Add-Content -Path $FilePath -Value $LineToWrite
    } else {
        return "The file $FilePath does not exist"
    }
}

Function WriteToFileMethodTwo {
    if (Test-Path $args[0]) {
        Add-Content -Path $args[0] -Value $args[1]
    } else {
        return "The file $($args[0]) does not exist"
    }
}

WriteToFileMethodOne 'k:\textfile.txt'
WriteToFileMethodTwo 'k:\textfile.txt' 'Write this to the text file'