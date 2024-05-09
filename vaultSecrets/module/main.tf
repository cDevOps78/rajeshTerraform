resource "vault_mount" "secretEngine" {
  path        = "${var.secretEngine}"
  type        = "kv"
  options     = { version = "1" }
  description = "KV Version 1 secret engine ${var.secretEngine} mount"
}

resource "vault_kv_secret" "secret" {
  path = "${vault_mount.secretEngine.path}/${var.secretPath}"
  data_json = jsonencode("${var.data}")
}