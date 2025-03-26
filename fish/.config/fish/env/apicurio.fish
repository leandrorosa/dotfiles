function lazy_set_apicurio_client_id
    if not set -q APICURIO_CLIENT_ID
        set -Ux APICURIO_CLIENT_ID (vault kv get --field="client-id.pipeline" secret/general-secrets/unmanaged/apicurio)
    end
end

function lazy_set_apicurio_client_secret
    if not set -q APICURIO_CLIENT_SECRET
        set -Ux APICURIO_CLIENT_SECRET (vault kv get --field="client-secret.pipeline" secret/general-secrets/unmanaged/apicurio)
    end
end

function check_and_set_apicurio_vars
    if string match -r '.*\$APICURIO_CLIENT_ID.*' (commandline -p)
        lazy_set_apicurio_client_id
    end
    if string match -r '.*\$APICURIO_CLIENT_SECRET.*' (commandline -p)
        lazy_set_apicurio_client_secret
    end
end

check_and_set_apicurio_vars