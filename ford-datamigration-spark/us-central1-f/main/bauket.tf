# google_storage_bucket.s0:
resource "google_storage_bucket" "s0" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "dataflow-staging-us-central1-2eddbe812a42a61984f8caa9d617380b"
    labels                      = {}
    location                    = "US-CENTRAL1"
    name                        = "dataflow-staging-us-central1-2eddbe812a42a61984f8caa9d617380b"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/dataflow-staging-us-central1-2eddbe812a42a61984f8caa9d617380b"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://dataflow-staging-us-central1-2eddbe812a42a61984f8caa9d617380b"

    timeouts {}
}

# google_storage_bucket.s1:
resource "google_storage_bucket" "s1" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "dataproc-staging-us-central1-996875462210-zreja7xd"
    labels                      = {}
    location                    = "US-CENTRAL1"
    name                        = "dataproc-staging-us-central1-996875462210-zreja7xd"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/dataproc-staging-us-central1-996875462210-zreja7xd"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://dataproc-staging-us-central1-996875462210-zreja7xd"

    timeouts {}
}

# google_storage_bucket.s2:
resource "google_storage_bucket" "s2" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "dataproc-temp-us-central1-996875462210-baqidfzk"
    labels                      = {}
    location                    = "US-CENTRAL1"
    name                        = "dataproc-temp-us-central1-996875462210-baqidfzk"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/dataproc-temp-us-central1-996875462210-baqidfzk"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://dataproc-temp-us-central1-996875462210-baqidfzk"

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

    timeouts {}
}

# google_storage_bucket.s3:
resource "google_storage_bucket" "s3" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "ford-aikido-bucket"
    labels                      = {}
    location                    = "US"
    name                        = "ford-aikido-bucket"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/ford-aikido-bucket"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    url                         = "gs://ford-aikido-bucket"

    timeouts {}
}
