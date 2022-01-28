# google_storage_bucket.s0:
resource "google_storage_bucket" "s0" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "dataproc-temp-au-southeast1-398013698563-feyyosvw"
    labels                      = {}
    location                    = "AUSTRALIA-SOUTHEAST1"
    name                        = "dataproc-temp-au-southeast1-398013698563-feyyosvw"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/dataproc-temp-au-southeast1-398013698563-feyyosvw"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://dataproc-temp-au-southeast1-398013698563-feyyosvw"

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

# google_storage_bucket.s1:
resource "google_storage_bucket" "s1" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "dataproc-staging-au-southeast1-398013698563-y4s02r3q"
    labels                      = {}
    location                    = "AUSTRALIA-SOUTHEAST1"
    name                        = "dataproc-staging-au-southeast1-398013698563-y4s02r3q"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/dataproc-staging-au-southeast1-398013698563-y4s02r3q"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://dataproc-staging-au-southeast1-398013698563-y4s02r3q"

    timeouts {}
}

# google_storage_bucket.s10:
resource "google_storage_bucket" "s10" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "asia.artifacts.ford-data-fusion-project.appspot.com"
    labels                      = {}
    location                    = "ASIA"
    name                        = "asia.artifacts.ford-data-fusion-project.appspot.com"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/asia.artifacts.ford-data-fusion-project.appspot.com"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://asia.artifacts.ford-data-fusion-project.appspot.com"

    timeouts {}
}

# google_storage_bucket.s2:
resource "google_storage_bucket" "s2" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "edpms_dev_storage"
    labels                      = {}
    location                    = "US"
    name                        = "edpms_dev_storage"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/edpms_dev_storage"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    url                         = "gs://edpms_dev_storage"

    timeouts {}
}

# google_storage_bucket.s3:
resource "google_storage_bucket" "s3" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "review_buck"
    labels                      = {}
    location                    = "US-EAST1"
    name                        = "review_buck"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/review_buck"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    url                         = "gs://review_buck"

    timeouts {}
}

# google_storage_bucket.s4:
resource "google_storage_bucket" "s4" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "gcf-sources-398013698563-us-central1"
    labels                      = {}
    location                    = "US-CENTRAL1"
    name                        = "gcf-sources-398013698563-us-central1"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/gcf-sources-398013698563-us-central1"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    url                         = "gs://gcf-sources-398013698563-us-central1"

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

    timeouts {}
}

# google_storage_bucket.s5:
resource "google_storage_bucket" "s5" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "us.artifacts.ford-data-fusion-project.appspot.com"
    labels                      = {}
    location                    = "US"
    name                        = "us.artifacts.ford-data-fusion-project.appspot.com"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/us.artifacts.ford-data-fusion-project.appspot.com"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://us.artifacts.ford-data-fusion-project.appspot.com"

    timeouts {}
}

# google_storage_bucket.s6:
resource "google_storage_bucket" "s6" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "teltonikapoc"
    labels                      = {}
    location                    = "ASIA"
    name                        = "teltonikapoc"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/teltonikapoc"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    url                         = "gs://teltonikapoc"

    timeouts {}
}

# google_storage_bucket.s7:
resource "google_storage_bucket" "s7" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "ford-data-fusion-project.appspot.com"
    labels                      = {}
    location                    = "US"
    name                        = "ford-data-fusion-project.appspot.com"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/ford-data-fusion-project.appspot.com"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://ford-data-fusion-project.appspot.com"

    timeouts {}
}

# google_storage_bucket.s8:
resource "google_storage_bucket" "s8" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "staging.ford-data-fusion-project.appspot.com"
    labels                      = {}
    location                    = "US"
    name                        = "staging.ford-data-fusion-project.appspot.com"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/staging.ford-data-fusion-project.appspot.com"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    url                         = "gs://staging.ford-data-fusion-project.appspot.com"

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

    timeouts {}
}

# google_storage_bucket.s9:
resource "google_storage_bucket" "s9" {
    default_event_based_hold    = false
    force_destroy               = false
    id                          = "gcf-sources-398013698563-asia-south1"
    labels                      = {}
    location                    = "ASIA-SOUTH1"
    name                        = "gcf-sources-398013698563-asia-south1"
    project                     = "Ford-Datamigration-Spark"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/gcf-sources-398013698563-asia-south1"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    url                         = "gs://gcf-sources-398013698563-asia-south1"

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

    timeouts {}
}