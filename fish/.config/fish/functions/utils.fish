function disk-usage-current-dir --description 'Show disk usage of current directory'
    du -sh ./*
end

function disk-usage --description 'Show disk usage'
    df -h
end