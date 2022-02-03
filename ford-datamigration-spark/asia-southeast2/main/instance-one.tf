# google_compute_instance.t1:
resource "google_compute_instance" "t1" {
    can_ip_forward       = false
    cpu_platform         = "Intel Broadwell"
    current_status       = "RUNNING"
    deletion_protection  = false
    enable_display       = false
    guest_accelerator    = []
    id                   = "projects/ford-datamigration-spark/zones/asia-southeast2-a/instances/aikido-spark-arbiters-vm-0"
    instance_id          = "1172525941880510702"
    label_fingerprint    = "Hfk4h7ZY6nw="
    labels               = {
        "goog-dm" = "aikido-spark"
    }
    machine_type         = "e2-standard-2"
    zone                 = "asia-southeast2-a"
    project              = "ford-datamigration-spark"

    metadata             = {
        "google-logging-enable"    = "0"
        "google-monitoring-enable" = "0"
        "is_mongodb_arbiter"       = "True"
        "is_mongodb_server"        = "False"
        "mongodb_arbiters"         = "aikido-spark-arbiters-vm-0"
        "mongodb_replicaset_name"  = "rs0"
        "mongodb_servers"          = "aikido-spark-servers-vm-0"
        "status-config-url"        = "https://runtimeconfig.googleapis.com/v1beta1/projects/ford-datamigration-spark/configs/aikido-spark-arbiters-config"
        "status-uptime-deadline"   = "300"
        "status-variable-path"     = "status"
    }
    metadata_fingerprint = "pJn_ZiuIDxk="
    name                 = "aikido-spark-arbiters-vm-0"
    resource_policies    = []
    self_link            = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/zones/asia-southeast2-a/instances/aikido-spark-arbiters-vm-0"
    tags                 = [
        "aikido-spark-arbiters-tier",
        "aikido-spark-deployment",
    ]
    tags_fingerprint     = "IPD4zE_AZwI="

    boot_disk {
        auto_delete = true
        device_name = "aikido-spark-arbiters-vm-tmpl-0-boot-disk"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/zones/asia-southeast2-a/disks/aikido-spark-arbiters-vm-0"

        initialize_params {
            image  = "https://www.googleapis.com/compute/v1/projects/click-to-deploy-images/global/images/mongodb-v20210321"
            labels = {}
            size   = 10
            type   = "pd-standard"
        }
    }

    network_interface {
        name               = "nic0"
        network            = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/global/networks/default"
        network_ip         = "10.184.0.2"
        queue_count        = 0
        stack_type         = "IPV4_ONLY"
        subnetwork         = "https://www.googleapis.com/compute/v1/projects/ford-datamigration-spark/regions/asia-southeast2/subnetworks/default"
        subnetwork_project = "ford-datamigration-spark"

        access_config {
            nat_ip       = "34.101.144.33"
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
            "https://www.googleapis.com/auth/cloud.useraccounts.readonly",
            "https://www.googleapis.com/auth/cloudruntimeconfig",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring.write",
        ]
    }

    timeouts {}
}

