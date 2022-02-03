
resource "google_compute_instance" "s1" {
  
  name                 = "${var.instance}s0"
  resource_policies    = []
  tags                 = ["dataflow"]
  machine_type         = "e2-standard-2"
  zone                 = "asia-southeast2-a"
  project              = "ford-datamigration-spark"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  service_account {
    email  = "398013698563-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "s2" {
  name                 = "${var.instance}s1"
  project              = "ford-data-fusion-project"
  resource_policies    = []
  tags                 = ["dataflow"]
  machine_type         = "e2-standard-2"
  zone                 = "asia-southeast2-a"
  project              = "ford-datamigration-spark"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  service_account {
    email  = "398013698563-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}

