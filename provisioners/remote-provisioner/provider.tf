provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "https://vault-internal.azcart.online:8200"

  # token = ""   VAULT_TOKEN
  # skip_tls_verify = "" VAULT_SKIP_VERIFY
}
