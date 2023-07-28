variable "project" {
  default = "anbc-pdev"
}

variable "region" {
  default = "us-east4"
}

variable "location" {
  default = "us-east4"
}

variable "storage-class" {
  default = "STANDARD"
}

variable "uniform-bucket-level-access" {
  type    = bool
  default = true
}

variable "force-destroy" {
  type    = bool
  default = false
}

variable "is-versioned" {
  type    = bool
  default = false
}

variable "labels" {
  description = "additional labels besides tenant labels"
  type        = map(any)
  default     = {}
}

variable "name" {
  description = "name of bucket without tenant name and env name"
  default     = "test"
}

variable "classification" {
  default = "proprietary"
}

variable "rules" {
  type    = any
  default = null
}

variable "delete-old-version" {
  type    = bool
  default = true
}

variable "delete-year-old" {
  type    = bool
  default = true
}

variable "env" {
  default = null
}

variable "policies" {
  description = "additional IAM permissions besides tenant principals"
  type        = map(any)
  default     = {}
}

variable "admin-role" {
  default = "roles/storage.admin"
}

variable "object-admin-role" {
  default = "roles/storage.objectAdmin"
}

variable "object-creator-role" {
  default = "roles/storage.objectCreator"
}

variable "viewer-role" {
  default = "roles/storage.objectViewer"
}

variable "admin-principals" {
  type    = list(any)
  default = []
}

variable "object-admin-principals" {
  type    = list(any)
  default = []
}

variable "object-creator-principals" {
  type    = list(any)
  default = []
}

variable "viewer-principals" {
  type    = list(any)
  default = []
}

variable "skip-default-principals" {
  default = false
}

variable "create-bucket" {
  default = true
}

variable "full-name" {
  default = null
}

variable "autoclass" {
  default = false
}
