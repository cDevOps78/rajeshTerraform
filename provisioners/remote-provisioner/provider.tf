provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "https://18.209.100.206:8200"

  # token = ""   VAULT_TOKEN
  # skip_tls_verify = "" VAULT_SKIP_VERIFY
}
