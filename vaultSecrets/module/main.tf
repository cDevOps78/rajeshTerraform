resource "vault_mount" "secretEngine" {
  path        = "${var.secretEngine}"
  type        = "kv"
  options     = { version = "1" }
  description = "KV Version 1 secret engine ${var.secretEngine} mount"
}

resource "vault_kv_secret" "secret" {
  count = var.secretPath
  path = "${vault_mount.secretEngine.path}/${each.key}"
  data_json = jsonencode("${each.value}")
}