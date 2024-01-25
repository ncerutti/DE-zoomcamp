variable "location" {
  default     = "EU"
  description = "value of the location"
}

variable "region" {
  default     = "europe-west2"
  description = "value of the region"
}

variable "credentials_path" {
  default     = "./keys/dezoom-terrasecret.json"
  description = "value of the credentials"
}

variable "bq_dataset_name" {
  default     = "dezoom_dataset"
  description = "value of the dataset name"
}

variable "gcs_storage_class" {
  default     = "STANDARD"
  description = "value of the storage class"
}

variable "gcs_bucket_name" {
  default     = "bucket-dezoom-412200"
  description = "value of the bucket name"
}