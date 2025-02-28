function base64e
    echo -n "$argv" | openssl base64
end

function base64d
    echo -n "$argv" | base64 --decode
end