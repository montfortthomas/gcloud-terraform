# google_storage_bucket.s1:
resource "google_storage_bucket" "s1" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "AUSTRALIA-SOUTHEAST1"
    name                        = "${var.bucket}_s1"
    project                     = "ford-data-migration-poc"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
}

resource "google_storage_bucket" "s2" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "AUSTRALIA-SOUTHEAST1"
    name                        = "${var.bucket}_s2"
    project                     = "ford-data-migration-poc"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
}
resource "google_storage_bucket" "s3" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "AUSTRALIA-SOUTHEAST1"
    name                        = "${var.bucket}_s3"
    project                     = "ford-data-migration-poc"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
}