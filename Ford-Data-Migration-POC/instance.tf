resource "google_compute_instance" "s1" {
  name                 = "${var.instance}s1"
  project              = "ford-data-migration-poc"
  resource_policies    = []
  tags                 = [
      "dataflow",
  ]
  zone                 = "us-west1-a"
  machine_type         = "n1-standard-4"
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
  name                 = "${var.instance}s2"
  project              = "ford-data-migration-poc"
  resource_policies    = []
  tags                 = [
      "dataflow",
  ]
  zone                 = "us-east1-c"
  machine_type         = "n1-standard-4"
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
resource "google_compute_instance" "s3" {
  name                 = "${var.instance}s3"
  project              = "ford-data-migration-poc"
  resource_policies    = []
  tags                 = [
      "dataflow",
  ]
  zone                 = "us-central1-f"
  machine_type         = "n1-standard-4"
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

resource "google_compute_instance" "s4" {
  name                 = "${var.instance}s4"
  project              = "ford-data-migration-poc"
  resource_policies    = []
  tags                 = [
      "dataflow",
  ]
  zone                 = "us-central1-a"
  machine_type         = "n1-standard-4"
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


resource "google_compute_instance" "s5" {
  name                 = "${var.instance}s5"
  project              = "ford-data-migration-poc"
  resource_policies    = []
  tags                 = [
      "dataflow",
  ]
  zone                 = "us-central1-a"
  machine_type         = "n1-standard-4"
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

resource "google_compute_instance" "s6" {
  name                 = "${var.instance}s6"
  project              = "ford-data-migration-poc"
  resource_policies    = []
  tags                 = [
      "dataflow",
  ]
  zone                 = "us-central1-a"
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