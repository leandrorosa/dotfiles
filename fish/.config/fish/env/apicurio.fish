set -e APICURIO_CLIENT_ID
set -e APICURIO_CLIENT_SECRET

function refresh-apicurio-envs --description 'Configure Apicurio environment variables'
    set -Ux APICURIO_CLIENT_ID (vault kv get --field="client-id.pipeline" secret/general-secrets/unmanaged/apicurio)
    set -Ux APICURIO_CLIENT_SECRET (vault kv get --field="client-secret.pipeline" secret/general-secrets/unmanaged/apicurio)
end

