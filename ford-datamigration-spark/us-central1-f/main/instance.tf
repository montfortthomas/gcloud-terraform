# google_compute_instance.t3:
resource "google_compute_instance" "t3" {
    can_ip_forward       = false
    cpu_platform         = "Intel Haswell"
    current_status       = "RUNNING"
    deletion_protection  = false
    enable_display       = false
    guest_accelerator    = []
    id                   = "projects/ford-datamigration-spark/zones/us-central1-f/instances/cluster-6c13-m"
    instance_id          = "6181312473148628515"
    label_fingerprint    = "XktI4YV6f1Q="
    labels               = {
        "goog-dataproc-cluster-name" = "cluster-6c13"
        "goog-dataproc-cluster-uuid" = "9179c6b1-c705-4a41-bf41-551996bb5caf"
        "goog-dataproc-location"     = "us-central1"
    }
    machine_type         = "n1-standard-4"
    metadata             = {
        "dataproc-agent-output-directory"          = "gs://dataproc-staging-us-central1-996875462210-zreja7xd/google-cloud-dataproc-metainfo/9179c6b1-c705-4a41-bf41-551996bb5caf/cluster-6c13-m"
        "dataproc-bucket"                          = "dataproc-staging-us-central1-996875462210-zreja7xd"
        "dataproc-cloud-logging-enabled"           = "false"
        "dataproc-cluster-configuration-directory" = "gs://dataproc-staging-us-central1-996875462210-zreja7xd/google-cloud-dataproc-metainfo/9179c6b1-c705-4a41-bf41-551996bb5caf/"
        "dataproc-cluster-name"                    = "cluster-6c13"
        "dataproc-cluster-properties"              = "ZIPPY:eJyVV11P4zgUfe+vQJrXjdWkH5RKeSiQWdiFtkrKallVqlzHbQ2xnbGdDp1fP9dJSxtwgBVS0oKv7XvuOedevl1lhTZUneVK5lQZRnXr270UZ6Nifeb3z/z2sNMe9oKz6fXsLGgHfivFBsNiMh/usBIok2sPr9eKrrFhUiAq8DKjaWhUQVs6x+p5PixfqFyOOeKUS7UL+902b6VMG5LPhxy2pGlBKNq/nvAWI5kbHXr/8pfz/oC3bPz+UCFTyrHAa6oQTlNFtQ7bqPyZDwftoN/apCs9H8IDCcypXY80JVKkWO3Qxphce+8CLwb9i88DnXEDV1zjMed+HRn9I0NkKevYVZCcQgOfEMkLtCUSdgz9U0TgF7JQ5BWVE4S8tcKErorMSyERzpnWUCjPME5lYTzITocDqEbbceSTXB4qojP5UxusDIJN8owamsI6m9dFr54OfaGkMFIdKt0771zwE94cPiFNNrB3Btfl+MUDkEmhFBXGg2MhP99xoQMU5c6IL8OO3+u79obdjJIZMlg/Q9SPgmqDmACqb3GGOMsypsNeG7J2BOMMkkW/qJLop1TPVOmqJsci26XHIr8nIXCi5+aS2jJCVU5eiUEqBXp94nc8bvnb812X4lIwQJWJNYI6kOdUsS1AV5EmXOFM0wYgNFG73CD4umXpMaRMyXJpPoQrrjVaZpIAG9kvGvqdbuCfnweDemn3Z0K5YqqLzCTl2osApOwkzwb0bQulgHkQuEP2K0Ukw5C4VGuEcwwkQBucSpmjY+w2QBuNbqrwBECj6o5uaZYuE4MNTew2SYVlg1LqDhL0gu7xjpUV5acHgjEdNGRF5r2K7DNuMQGEYmnlfl8lWMUqRKDykkMUMwgTu4OGMqc0jB/Gi8vo+ySOFkkU/3N7FSUNGquuGXySmtU9Fqn3Bo/algVDuVQmbDtc2QJ61JzfDrql+XhUbOfDx1E8Xsxu76O723FkrxvFi5toNE1u/4vCzqB7igAYkjCoRibKc7ODcqmKkO7DHf3gs8Jooyiknhaqqg0YXdiHclSM3zNO6+xgu1YfRhKZ6XB2l2z9P8onOryDU7utORfjBfesZZDyIM8iFPTfQxRHyeQhvoruR+PRnx9hxOEqjEPDWUiR7fbSdniPy3X6DjlUPJVIQ3lt/QK3ZW4ouPuSYliDrSOhVembguxK7Dqnd7SN4SBuI7010Z91LxtRNoyGHltqGYxApBZWIgthgGgf9iQddpos2YlN9yQBzaCJsRWDumsCAgZXPbVFt6d8pe3wXArguC4FvQWvCp+KfAdwfgz53hHqkHt+q+JpxaKb0fVkMl1cj2aj8eQ6Wkyms6TUQ88PeM3JOTXYHoJIaa+1HuFAjOXECdh5A+fBsByc/6q9vsLXNPy9cZoN2AQIFp5oRQ3ZVHwGrYN72FEmFIB403joMvXup4urGxyV7GrHlUb+l4U7iA8cpMA+yP3jkaD91k0sA945id/rHAygRpm/JpeLm9tkNokfnQbdOGi5uiixTZuZnffKiHcMOSxBSkqDUrrCMCwgqWD6AKV5ucwYscbGnKqoz4X7WhQavAWGzTej83GpBf376DZuGsWdk7izO5dWRY1iRB+mrmNnr9qIeyyq5l2LKHe360hs0WQajS/vRsli/HC/mN3E0eg6Cf2G9s4EzHqClC2+/FNV1mQ6iv8GI4juJ+PFPTzjx/2xjZWs/efggqjmvEG79RvEuA1/"
        "dataproc-cluster-uuid"                    = "9179c6b1-c705-4a41-bf41-551996bb5caf"
        "dataproc-datanode-enabled"                = "true"
        "dataproc-initialization-script-count"     = "0"
        "dataproc-master"                          = "cluster-6c13-m"
        "dataproc-master-additional"               = ""
        "dataproc-option-run-init-actions-early"   = "true"
        "dataproc-protocol-spec"                   = "ElgKKmRhdGFwcm9jY29udHJvbC11cy1jZW50cmFsMS5nb29nbGVhcGlzLmNvbRIqZGF0YXByb2Njb250cm9sLXVzLWNlbnRyYWwxLmdvb2dsZWFwaXMuY29t"
        "dataproc-region"                          = "us-central1"
        "dataproc-role"                            = "Master"
        "dataproc-temp-bucket"                     = "dataproc-temp-us-central1-996875462210-baqidfzk"
        "dataproc-worker-count"                    = "0"
    }
    metadata_fingerprint = "6a-SOWWv1iE="
    name                 = "cluster-6c13-m"
    project              = "ford-datamigration-spark"
    resource_policies    = []
    self_link            = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/zones/us-central1-f/instances/cluster-6c13-m"
    tags                 = []
    tags_fingerprint     = "42WmSpB8rSM="
    zone                 = "us-central1-f"

    boot_disk {
        auto_delete = true
        device_name = "persistent-disk-0"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/zones/us-central1-f/disks/cluster-6c13-m"

        initialize_params {
            image  = "https://www.googleapis.com/compute/v1/projects/cloud-dataproc/global/images/dataproc-2-0-deb10-20210806-093135-rc01"
            labels = {
                "goog-dataproc-cluster-name" = "cluster-6c13"
                "goog-dataproc-cluster-uuid" = "9179c6b1-c705-4a41-bf41-551996bb5caf"
                "goog-dataproc-location"     = "us-central1"
            }
            size   = 500
            type   = "pd-standard"
        }
    }

    network_interface {
        name               = "nic0"
        network            = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/global/networks/default"
        network_ip         = "10.128.0.9"
        queue_count        = 0
        stack_type         = "IPV4_ONLY"
        subnetwork         = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/regions/us-central1/subnetworks/default"
        subnetwork_project = "ford-datamigration-spark"

        access_config {
            nat_ip       = "35.239.255.219"
            network_tier = "PREMIUM"
        }
    }

    scheduling {
        automatic_restart   = true
        min_node_cpus       = 0
        on_host_maintenance = "MIGRATE"
        preemptible         = false
    }

    service_account {
        email  = "996875462210-compute@developer.gserviceaccount.com"
        scopes = [
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/bigtable.admin.table",
            "https://www.googleapis.com/auth/bigtable.data",
            "https://www.googleapis.com/auth/cloud.useraccounts.readonly",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_write",
            "https://www.googleapis.com/auth/logging.write",
        ]
    }

    shielded_instance_config {
        enable_integrity_monitoring = false
        enable_secure_boot          = false
        enable_vtpm                 = false
    }

    timeouts {}
}
