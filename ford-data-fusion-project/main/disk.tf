# google_compute_disk.s0:
resource "google_compute_disk" "s0" {
    creation_timestamp        = "2021-09-09T20:55:03.196-07:00"
    description               = "Data disk created for Dataflow job: 2021-09-09_20_54_49-11272234845275015542"
    id                        = "projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-0"
    image                     = "https://www.googleapis.com/compute/v1/projects/dataflow-service-producer-prod/global/images/streaming-data-disk-base-image"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    last_attach_timestamp     = "2021-09-09T20:57:47.737-07:00"
    name                      = "mv-teltonikagps-data-09092054-0wlp-harness-disk-0"
    physical_block_size_bytes = 4096
    project                   = "ford-data-fusion-project"
    provisioned_iops          = 0
    self_link                 = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-0"
    size                      = 400
    source_image_id           = "1740662930686468167"
    type                      = "pd-standard"
    users                     = [
        "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikagps-data-09092054-0wlp-harness-j048",
    ]
    zone                      = "asia-south1-b"

    timeouts {}
}

# google_compute_disk.s1:
resource "google_compute_disk" "s1" {
    creation_timestamp        = "2021-09-09T20:55:03.145-07:00"
    description               = "Data disk created for Dataflow job: 2021-09-09_20_54_49-11272234845275015542"
    id                        = "projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-1"
    image                     = "https://www.googleapis.com/compute/v1/projects/dataflow-service-producer-prod/global/images/streaming-data-disk-base-image"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    last_attach_timestamp     = "2021-09-09T21:08:23.955-07:00"
    last_detach_timestamp     = "2021-09-09T21:08:01.067-07:00"
    name                      = "mv-teltonikagps-data-09092054-0wlp-harness-disk-1"
    physical_block_size_bytes = 4096
    project                   = "ford-data-fusion-project"
    provisioned_iops          = 0
    self_link                 = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-1"
    size                      = 400
    source_image_id           = "1740662930686468167"
    type                      = "pd-standard"
    users                     = [
        "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikagps-data-09092054-0wlp-harness-j048",
    ]
    zone                      = "asia-south1-b"

    timeouts {}
}

# google_compute_disk.s2:
resource "google_compute_disk" "s2" {
    creation_timestamp        = "2021-09-09T20:55:02.956-07:00"
    description               = "Data disk created for Dataflow job: 2021-09-09_20_54_49-11272234845275015542"
    id                        = "projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-2"
    image                     = "https://www.googleapis.com/compute/v1/projects/dataflow-service-producer-prod/global/images/streaming-data-disk-base-image"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    last_attach_timestamp     = "2021-09-09T20:57:45.156-07:00"
    name                      = "mv-teltonikagps-data-09092054-0wlp-harness-disk-2"
    physical_block_size_bytes = 4096
    project                   = "ford-data-fusion-project"
    provisioned_iops          = 0
    self_link                 = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-2"
    size                      = 400
    source_image_id           = "1740662930686468167"
    type                      = "pd-standard"
    users                     = [
        "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikagps-data-09092054-0wlp-harness-j048",
    ]
    zone                      = "asia-south1-b"

    timeouts {}
}


# google_compute_disk.s3:
resource "google_compute_disk" "s3" {
    creation_timestamp        = "2021-09-09T20:55:29.835-07:00"
    id                        = "projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-j048"
    image                     = "https://www.googleapis.com/compute/v1/projects/dataflow-service-producer-prod/global/images/dataflow-dataflow-owned-resource-20210830-02-rc01"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    last_attach_timestamp     = "2021-09-09T20:55:29.836-07:00"
    name                      = "mv-teltonikagps-data-09092054-0wlp-harness-j048"
    physical_block_size_bytes = 4096
    project                   = "ford-data-fusion-project"
    provisioned_iops          = 0
    self_link                 = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-j048"
    size                      = 30
    source_image_id           = "7539861395384990869"
    type                      = "pd-standard"
    users                     = [
        "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikagps-data-09092054-0wlp-harness-j048",
    ]
    zone                      = "asia-south1-b"

    timeouts {}
}

# google_compute_disk.s4:
resource "google_compute_disk" "s4" {
    creation_timestamp        = "2021-09-10T00:25:27.892-07:00"
    id                        = "projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikaio-data-09100024-j81g-harness-5rwb"
    image                     = "https://www.googleapis.com/compute/v1/projects/dataflow-service-producer-prod/global/images/dataflow-dataflow-owned-resource-20210830-02-rc01"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    last_attach_timestamp     = "2021-09-10T00:25:27.893-07:00"
    name                      = "mv-teltonikaio-data-09100024-j81g-harness-5rwb"
    physical_block_size_bytes = 4096
    project                   = "ford-data-fusion-project"
    provisioned_iops          = 0
    self_link                 = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikaio-data-09100024-j81g-harness-5rwb"
    size                      = 30
    source_image_id           = "7539861395384990869"
    type                      = "pd-standard"
    users                     = [
        "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikaio-data-09100024-j81g-harness-5rwb",
    ]
    zone                      = "asia-south1-b"

    timeouts {}
}

# google_compute_disk.s5:
resource "google_compute_disk" "s5" {
    creation_timestamp        = "2021-09-10T00:25:02.556-07:00"
    description               = "Data disk created for Dataflow job: 2021-09-10_00_24_47-14808084775878198701"
    id                        = "projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikaio-data-09100024-j81g-harness-disk-0"
    image                     = "https://www.googleapis.com/compute/v1/projects/dataflow-service-producer-prod/global/images/streaming-data-disk-base-image"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    last_attach_timestamp     = "2021-09-10T00:27:42.492-07:00"
    name                      = "mv-teltonikaio-data-09100024-j81g-harness-disk-0"
    physical_block_size_bytes = 4096
    project                   = "ford-data-fusion-project"
    provisioned_iops          = 0
    self_link                 = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikaio-data-09100024-j81g-harness-disk-0"
    size                      = 400
    source_image_id           = "1740662930686468167"
    type                      = "pd-standard"
    users                     = [
        "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikaio-data-09100024-j81g-harness-5rwb",
    ]
    zone                      = "asia-south1-b"

    timeouts {}
}
