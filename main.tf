locals {
  # env    = terraform.workspace
  env = var.env == null ? terraform.workspace : var.env

  name = var.name

  labels = null

}

// create one single resource
resource "google_storage_bucket" "this" {
  count                       = var.create-bucket ? 1 : 0
  name                        = local.name
  storage_class               = var.storage-class
  location                    = var.location
  uniform_bucket_level_access = var.uniform-bucket-level-access
  force_destroy               = var.force-destroy

  versioning {
    enabled = var.is-versioned
  }

  labels = merge(
    local.labels,
    { tenant = var.tenant },
    { dataclassification = var.classification }
  )
}

// the IAM for this resource
resource "google_storage_bucket_iam_member" "this" {
  depends_on = [
    google_storage_bucket.this
  ]
  bucket = local.name
  role   = "roles/storage.objectAdmin"
  member = "group:io-cloud@cvshealth.com"
}
