# google_storage_bucket.s0:
resource "google_storage_bucket" "s0" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "AUSTRALIA-SOUTHEAST1"
    name                        = "${var.bucket}_s0"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    lifecycle_rule {
        action {
            type = "Delete"
        }
        condition {
            age                        = 90
            days_since_custom_time     = 0
            days_since_noncurrent_time = 0
            matches_storage_class      = []
            num_newer_versions         = 0
            with_state                 = "ANY"
        }
    }
}

# google_storage_bucket.s1:
resource "google_storage_bucket" "s1" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "AUSTRALIA-SOUTHEAST1"
    name                        = "${var.bucket}_s1"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
}

# google_storage_bucket.s10:
resource "google_storage_bucket" "s10" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "ASIA"
    name                        = "${var.bucket}_s10"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
}

# google_storage_bucket.s2:
resource "google_storage_bucket" "s2" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "US"
    name                        = "${var.bucket}_s2"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
}

# google_storage_bucket.s3:
resource "google_storage_bucket" "s3" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "US-EAST1"
    name                        = "${var.bucket}_s3"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
}

# google_storage_bucket.s4:
resource "google_storage_bucket" "s4" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "US-CENTRAL1"
    name                        = "${var.bucket}_s4"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    cors {
        max_age_seconds = 0
        method          = [
            "GET",
        ]
        origin          = [
            "https://*.cloud.google.com",
            "https://*.corp.google.com",
            "https://*.corp.google.com:*",
        ]
        response_header = []
    }
}

# google_storage_bucket.s5:
resource "google_storage_bucket" "s5" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "US"
    name                        = "${var.bucket}_s5"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
}

# google_storage_bucket.s6:
resource "google_storage_bucket" "s6" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "ASIA"
    name                        = "${var.bucket}_s6"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
}

# google_storage_bucket.s7:
resource "google_storage_bucket" "s7" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "US"
    name                        = "${var.bucket}_s7"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
}

# google_storage_bucket.s8:
resource "google_storage_bucket" "s8" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "US"
    name                        = "${var.bucket}_s8"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    lifecycle_rule {
        action {
            type = "Delete"
        }
        condition {
            age                        = 15
            days_since_custom_time     = 0
            days_since_noncurrent_time = 0
            matches_storage_class      = []
            num_newer_versions         = 0
            with_state                 = "ANY"
        }
    }
}

# google_storage_bucket.s9:
resource "google_storage_bucket" "s9" {
    default_event_based_hold    = false
    force_destroy               = false
    labels                      = {}
    location                    = "ASIA-SOUTH1"
    name                        = "${var.bucket}_s9"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    cors {
        max_age_seconds = 0
        method          = [
            "GET",
        ]
        origin          = [
            "https://*.cloud.google.com",
            "https://*.corp.google.com",
            "https://*.corp.google.com:*",
        ]
        response_header = []
    }
}