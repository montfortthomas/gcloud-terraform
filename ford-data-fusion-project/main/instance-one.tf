# google_compute_instance.t1:
resource "google_compute_instance" "t1" {
    can_ip_forward       = false
    cpu_platform         = "Intel Skylake"
    current_status       = "RUNNING"
    deletion_protection  = false
    description          = "Created for Dataflow job: 2021-09-09_20_54_49-11272234845275015542"
    enable_display       = false
    guest_accelerator    = []
    id                   = "projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikagps-data-09092054-0wlp-harness-j048"
    instance_id          = "8988094165385963999"
    label_fingerprint    = "nnkqT3JCO_k="
    labels               = {
        "dataflow_job_id"                         = "2021-09-09_20_54_49-11272234845275015542"
        "dataflow_job_name"                       = "mv_teltonikagps_data"
        "goog-dataflow-provided-template-name"    = "pubsub_to_bigquery"
        "goog-dataflow-provided-template-type"    = "legacy"
        "goog-dataflow-provided-template-version" = "2021-08-30-00_rc00"
    }
    machine_type         = "n1-standard-4"
    metadata             = {
        "cloud_region"              = "asia-south1"
        "consumer_project_id"       = "ford-data-fusion-project"
        "cos-metrics-enabled"       = "true"
        "cos-update-strategy"       = "update_disabled"
        "created-by"                = "projects/398013698563/zones/asia-south1-b/instanceGroupManagers/dataflow-mv-teltonikagps-data-09092054-0wlp-harness"
        "dataflow_api_endpoint"     = "https://dataflow.googleapis.com/"
        "enable_jvm_metrics"        = "true"
        "google-container-manifest" = jsonencode(
            {
                apiVersion = "v1"
                kind       = "Pod"
                metadata   = {
                    name = "dataflow"
                }
                spec       = {
                    containers  = [
                        {
                            args            = [
                                "--log_file=/var/log/dataflow/boot-json.log",
                                "--log_dir=/var/log/dataflow",
                                "--memory_limit_mb=5715",
                                "--enable_streaming_pubsub_io_stackdriver_metrics",
                            ]
                            image           = "dataflow.gcr.io/v1beta3/windmill:20210830-02-rc01"
                            imagePullPolicy = "IfNotPresent"
                            name            = "windmill"
                            ports           = [
                                {
                                    containerPort = 8080
                                    hostPort      = 8080
                                    name          = "wm-status-port"
                                },
                                {
                                    containerPort = 12345
                                    hostPort      = 12345
                                    name          = "wm-receive-port"
                                },
                                {
                                    containerPort = 12346
                                    hostPort      = 12346
                                    name          = "wm-service-port"
                                },
                                {
                                    containerPort = 12347
                                    hostPort      = 12347
                                    name          = "wm-grpc-port"
                                },
                            ]
                            resources       = {
                                requests = {
                                    memory = "7603224576"
                                }
                            }
                            securityContext = {
                                privileged = true
                            }
                            volumeMounts    = [
                                {
                                    mountPath = "/windmill"
                                    name      = "windmill-data"
                                },
                                {
                                    mountPath = "/mnt/host_dev"
                                    name      = "pd-dev"
                                },
                                {
                                    mountPath = "/var/log/dataflow"
                                    name      = "dataflow-logs-windmill"
                                },
                                {
                                    mountPath = "/var/lib/dataflow"
                                    name      = "metadata"
                                    readOnly  = true
                                },
                            ]
                        },
                        {
                            args            = [
                                "--log_file=/var/log/dataflow/boot-json.log",
                                "--log_dir=/var/log/dataflow",
                                "--work_dir=/var/opt/google/dataflow",
                                "--tmp_dir=/var/opt/google/tmp",
                                "--endpoint=https://dataflow.googleapis.com/",
                                "--physmem_limit_pct=37",
                            ]
                            image           = "gcr.io/cloud-dataflow/v1beta3/beam-java11-streaming:beam-2.29.0"
                            imagePullPolicy = "IfNotPresent"
                            name            = "java-streaming"
                            ports           = [
                                {
                                    containerPort = 5555
                                    hostPort      = 5555
                                    name          = "j-jmx-port"
                                },
                                {
                                    containerPort = 8081
                                    hostPort      = 8081
                                    name          = "j-status-port"
                                },
                            ]
                            resources       = {
                                requests = {
                                    memory = "6529482752"
                                }
                            }
                            securityContext = {
                                privileged = true
                            }
                            volumeMounts    = [
                                {
                                    mountPath = "/var/log/dataflow"
                                    name      = "java-streaming-logs"
                                },
                                {
                                    mountPath = "/var/opt/google"
                                    name      = "persist"
                                },
                                {
                                    mountPath = "/var/lib/dataflow"
                                    name      = "metadata"
                                    readOnly  = true
                                },
                                {
                                    mountPath = "/usr/local/nvidia"
                                    name      = "nvidia-drivers-volume"
                                },
                            ]
                        },
                        {
                            args            = [
                                "--teardown_interval=10m",
                                "--log_file=/var/log/dataflow/vm_monitor-json.log",
                                "--dataflow_base_path=https://dataflow.googleapis.com/",
                                "--region=asia-south1",
                                "--teardown_policy=TEARDOWN_ALWAYS",
                            ]
                            image           = "dataflow.gcr.io/v1beta3/vmmonitor:20210830-02-rc01"
                            imagePullPolicy = "IfNotPresent"
                            name            = "vmmonitor"
                            resources       = {
                                requests = {
                                    memory = "52428800"
                                }
                            }
                            volumeMounts    = [
                                {
                                    mountPath = "/var/log/dataflow"
                                    name      = "dataflowlogs-vmmonitor"
                                },
                                {
                                    mountPath = "/var/lib/dataflow"
                                    name      = "metadata"
                                    readOnly  = true
                                },
                            ]
                        },
                        {
                            args            = [
                                "--log_file=/var/log/dataflow/health_checker-json.log",
                                "--dataflow_base_path=https://dataflow.googleapis.com/",
                                "--region=asia-south1",
                                "--healthz_list=windmill=localhost:8080/healthz,java-streaming=localhost:8081/healthz",
                            ]
                            image           = "dataflow.gcr.io/v1beta3/healthchecker:20210830-02-rc01"
                            imagePullPolicy = "IfNotPresent"
                            name            = "healthchecker"
                            resources       = {
                                requests = {
                                    memory = "52428800"
                                }
                            }
                            volumeMounts    = [
                                {
                                    mountPath = "/var/log/dataflow"
                                    name      = "dataflowlogs-healthchecker"
                                },
                                {
                                    mountPath = "/var/lib/dataflow"
                                    name      = "metadata"
                                    readOnly  = true
                                },
                            ]
                        },
                    ]
                    hostNetwork = true
                    volumes     = [
                        {
                            hostPath = {
                                path = "/var/opt/google/dataflow"
                            }
                            name     = "persist"
                        },
                        {
                            hostPath = {
                                path = "/var/opt/dataflow/windmill"
                            }
                            name     = "windmill-data"
                        },
                        {
                            hostPath = {
                                path = "/dev"
                            }
                            name     = "pd-dev"
                        },
                        {
                            hostPath = {
                                path = "/var/log/dataflow/windmill"
                            }
                            name     = "dataflow-logs-windmill"
                        },
                        {
                            hostPath = {
                                path = "/var/log/dataflow/java-streaming"
                            }
                            name     = "java-streaming-logs"
                        },
                        {
                            hostPath = {
                                path = "/var/log/dataflow/vm_monitor"
                            }
                            name     = "dataflowlogs-vmmonitor"
                        },
                        {
                            hostPath = {
                                path = "/var/log/dataflow/health_checker"
                            }
                            name     = "dataflowlogs-healthchecker"
                        },
                        {
                            hostPath = {
                                path = "/var/lib/dataflow"
                            }
                            name     = "metadata"
                        },
                        {
                            hostPath = {
                                path = "/var/lib/nvidia"
                            }
                            name     = "nvidia-drivers-volume"
                        },
                    ]
                }
            }
        )
        "instance-template"         = "projects/398013698563/global/instanceTemplates/dataflow-mv-teltonikagps-data-09092054-0wlp-harness"
        "instance_group_name"       = "dataflow-mv-teltonikagps-data-09092054-0wlp-harness"
        "job_id"                    = "2021-09-09_20_54_49-11272234845275015542"
        "job_name"                  = "mv_teltonikagps_data"
        "packages"                  = "gs://dataflow-templates-libraries/2021-08-30-00_RC00/teleport-all-bundled-x6fD8DkwuKlYK1j2N6odMbSxfmKI9IE7IGg7CQbM3og.jar|teleport-all-bundled-x6fD8DkwuKlYK1j2N6odMbSxfmKI9IE7IGg7CQbM3og.jar"
        "rightsizing_endpoint_fmt"  = "%s-autoscaling.googleapis.com"
        "sdk_pipeline_options"      = jsonencode(
            {
                display_data = [
                    {
                        key       = "filesToStage"
                        namespace = "org.apache.beam.sdk.options.PortablePipelineOptions"
                        type      = "STRING"
                        value     = "[/export/hda3/borglet/remote_hdd_fs_dirs/0.rapid.runner-zlsqu2lv-txly-rexp-bmju-rl4jysogxuhi.dataflow-releaser.1478082207722.14b334fb3717c109/mount/rapid/workflows/14c2d14b-01c7-467e-9a37-34d270a0151b/tmp/tmppu0za4gw/teleport-all-bundled.jar]"
                    },
                    {
                        key       = "maxNumWorkers"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineWorkerPoolOptions"
                        type      = "INTEGER"
                        value     = 3
                    },
                    {
                        key       = "autoscalingAlgorithm"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineWorkerPoolOptions"
                        type      = "STRING"
                        value     = "THROUGHPUT_BASED"
                    },
                    {
                        key       = "userAgent"
                        namespace = "org.apache.beam.sdk.options.PipelineOptions"
                        type      = "STRING"
                        value     = "Apache_Beam_SDK_for_Java/2.29.0(JDK_11_environment)"
                    },
                    {
                        key       = "templateLocation"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineOptions"
                        type      = "STRING"
                        value     = "gs://dataflow-templates-asia-south1/latest/PubSub_to_BigQuery"
                    },
                    {
                        key       = "streaming"
                        namespace = "org.apache.beam.sdk.options.StreamingOptions"
                        type      = "BOOLEAN"
                        value     = true
                    },
                    {
                        key       = "jobName"
                        namespace = "org.apache.beam.sdk.options.PipelineOptions"
                        type      = "STRING"
                        value     = "pubsubtobigquery-dataflow0releaser-0830084518-5b5b8735"
                    },
                    {
                        key       = "region"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineOptions"
                        type      = "STRING"
                        value     = "asia-south1"
                    },
                    {
                        key        = "runner"
                        namespace  = "org.apache.beam.sdk.options.PipelineOptions"
                        shortValue = "DataflowRunner"
                        type       = "JAVA_CLASS"
                        value      = "org.apache.beam.runners.dataflow.DataflowRunner"
                    },
                    {
                        key       = "project"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineOptions"
                        type      = "STRING"
                        value     = "dataflow-templates"
                    },
                    {
                        key       = "appName"
                        namespace = "org.apache.beam.sdk.options.ApplicationNameOptions"
                        type      = "STRING"
                        value     = "PubSubToBigQuery"
                    },
                    {
                        key       = "stagingLocation"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineOptions"
                        type      = "STRING"
                        value     = "gs://dataflow-templates-libraries/2021-08-30-00_RC00"
                    },
                    {
                        key       = "pipelineUrl"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineOptions"
                        type      = "STRING"
                        value     = "gs://dataflow-templates-libraries/2021-08-30-00_RC00/pipeline-20se6jmm0PUtB2D0uouu58JoS1_8eo_25tFqOLi73BI.pb"
                    },
                    {
                        key       = "tempLocation"
                        namespace = "org.apache.beam.sdk.options.PipelineOptions"
                        type      = "STRING"
                        value     = "gs://teltonikapoc/temp"
                    },
                    {
                        key       = "filesToStage"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineWorkerPoolOptions"
                        type      = "STRING"
                        value     = "[/export/hda3/borglet/remote_hdd_fs_dirs/0.rapid.runner-zlsqu2lv-txly-rexp-bmju-rl4jysogxuhi.dataflow-releaser.1478082207722.14b334fb3717c109/mount/rapid/workflows/14c2d14b-01c7-467e-9a37-34d270a0151b/tmp/tmppu0za4gw/teleport-all-bundled.jar]"
                    },
                    {
                        key       = "labels"
                        namespace = "org.apache.beam.runners.dataflow.options.DataflowPipelineOptions"
                        type      = "STRING"
                        value     = "{goog-dataflow-provided-template-name=pubsub_to_bigquery, goog-dataflow-provided-template-version=2021-08-30-00_rc00, goog-dataflow-provided-template-type=legacy}"
                    },
                    {
                        key       = "useSubscription"
                        namespace = "com.google.cloud.teleport.templates.PubSubToBigQuery$Options"
                        type      = "BOOLEAN"
                        value     = false
                    },
                    {
                        key       = "numWorkers"
                        namespace = "google.dataflow.v1beta3.TemplatesService"
                        type      = "INTEGER"
                        value     = 2
                    },
                    {
                        key       = "gcpTempLocation"
                        namespace = "google.dataflow.v1beta3.TemplatesService"
                        type      = "STRING"
                        value     = "gs://teltonikapoc/temp"
                    },
                ]
                options      = {
                    apiRootUrl                          = "https://dataflow.googleapis.com/"
                    appName                             = "PubSubToBigQuery"
                    autoscalingAlgorithm                = "BASIC"
                    credentialFactoryClass              = "org.apache.beam.sdk.extensions.gcp.auth.GcpCredentialFactory"
                    dataflowEndpoint                    = ""
                    dataflowJobId                       = "2021-09-09_20_54_49-11272234845275015542"
                    dataflowKmsKey                      = null
                    dataflowServiceOptions              = null
                    dataflowWorkerJar                   = null
                    defaultEnvironmentConfig            = null
                    defaultEnvironmentType              = null
                    diskSizeGb                          = 0
                    enableCloudDebugger                 = false
                    enableStreamingEngine               = false
                    environmentOptions                  = null
                    experiments                         = null
                    filesToStage                        = [
                        "/export/hda3/borglet/remote_hdd_fs_dirs/0.rapid.runner-zlsqu2lv-txly-rexp-bmju-rl4jysogxuhi.dataflow-releaser.1478082207722.14b334fb3717c109/mount/rapid/workflows/14c2d14b-01c7-467e-9a37-34d270a0151b/tmp/tmppu0za4gw/teleport-all-bundled.jar",
                    ]
                    gcpTempLocation                     = "gs://teltonikapoc/temp"
                    gcsPerformanceMetrics               = false
                    gcsUploadBufferSizeBytes            = null
                    googleApiTrace                      = null
                    inputTopic                          = "projects/ford-data-fusion-project/topics/tp_fmc001"
                    javascriptTextTransformFunctionName = null
                    javascriptTextTransformGcsPath      = null
                    jobName                             = "pubsubtobigquery-dataflow0releaser-0830084518-5b5b8735"
                    labels                              = {
                        goog-dataflow-provided-template-name    = "pubsub_to_bigquery"
                        goog-dataflow-provided-template-type    = "legacy"
                        goog-dataflow-provided-template-version = "2021-08-30-00_rc00"
                    }
                    maxNumWorkers                       = 3
                    network                             = null
                    numStreamingKeys                    = 50
                    numWorkers                          = 2
                    numberOfWorkerHarnessThreads        = 0
                    optionsId                           = 0
                    outputDeadletterTable               = null
                    outputTableSpec                     = "ford-data-fusion-project:teltonika.gps_data"
                    overrideWindmillBinary              = null
                    pathValidatorClass                  = "org.apache.beam.sdk.extensions.gcp.storage.GcsPathValidator"
                    pipelineUrl                         = "gs://dataflow-templates-libraries/2021-08-30-00_RC00/pipeline-20se6jmm0PUtB2D0uouu58JoS1_8eo_25tFqOLi73BI.pb"
                    project                             = "ford-data-fusion-project"
                    region                              = "asia-south1"
                    runner                              = "org.apache.beam.runners.dataflow.DataflowRunner"
                    saveProfilesToGcs                   = null
                    serviceAccount                      = null
                    stableUniqueNames                   = "WARNING"
                    stagerClass                         = "org.apache.beam.runners.dataflow.util.GcsStager"
                    stagingLocation                     = "gs://dataflow-templates-libraries/2021-08-30-00_RC00"
                    streaming                           = true
                    subnetwork                          = null
                    tempLocation                        = "gs://teltonikapoc/temp"
                    templateLocation                    = "gs://dataflow-templates-asia-south1/latest/PubSub_to_BigQuery"
                    useStorageWriteApi                  = false
                    useSubscription                     = false
                    userAgent                           = "Apache_Beam_SDK_for_Java/2.29.0(JDK_11_environment)"
                    workerDiskType                      = null
                    workerHarnessContainerImage         = "gcr.io/cloud-dataflow/v1beta3/IMAGE:beam-2.29.0"
                    workerMachineType                   = null
                    workerRegion                        = null
                    zone                                = null
                }
            }
        )
        "shutdown-script"           = <<-EOT
            #!/bin/bash 
             sudo /var/lib/agent/shutdown --dataflow_base_path=https://dataflow.googleapis.com/ --region=asia-south1
        EOT
        "unified-harness-image"     = "gcr.io/cloud-dataflow/v1beta3/unified-harness:20210708-rc00"
        "user-data"                 = <<-EOT
            #cloud-config
            
            
            bootcmd:
            - mount --bind /mnt/stateful_partition/var/lib/agent /var/lib/agent
            - mount -o remount,rw,exec /var/lib/agent
            - iptables -w -A INPUT -p tcp --dport 4194 -j ACCEPT
            - iptables -w -A INPUT -p tcp --dport 5555 -j ACCEPT
            - iptables -w -A INPUT -p tcp --dport 12345 -j ACCEPT
            - iptables -w -A INPUT -p tcp --dport 12346 -j ACCEPT
            - iptables -w -A INPUT -p tcp --dport 12347 -j ACCEPT
            - mkdir -p /etc/systemd/network/99-virtio.network.d
            - echo -e "[Network]\nDHCP=yes\nIPv6AcceptRA=yes" >  /etc/systemd/network/99-virtio.network.d/ipv6.conf
            - systemctl restart systemd-networkd
            - sysctl -w net.ipv4.ipfrag_low_thresh=196608
            - sysctl -w net.ipv4.ipfrag_high_thresh=262144
            runcmd:
            - sudo systemctl start node-problem-detector
            - sudo /bin/bash /var/lib/nvidia/setup_gpu.sh
            - systemctl start agent.service
            - systemctl start kubelet.service
            - systemctl start resource.service
            - sed "s/^/[PARTITION INFO]\t/" /proc/partitions
            - df -h | sed "s/^/[FILESYSTEM INFO]\t/"
            - resize2fs /dev/sda1
            - sed "s/^/[PARTITION INFO AFTER RESIZE]\t/" /proc/partitions
            - df -h | sed "s/^/[FILESYSTEM INFO AFTER RESIZE]\t/"
            write_files:
            -
              content: |
               if [[ -s /var/lib/agent/image_prepull ]]; then
                 echo "Running image prepuller script"
                 /var/lib/agent/image_prepull --endpoint=https://dataflow.googleapis.com/ --region=asia-south1
               else
                 echo "Image prepull not found, deferring to kubelet"
               fi
            
              owner: root
              path: /etc/dataflow/run_image_prepuller.sh
              permission: 0644
            -
              content: |
               [Unit]
               Description=Start kubelet
               Wants=docker.socket network-online.target
               After=docker.socket network-online.target
            
               [Service]
               ExecStartPre=/var/lib/agent/boot_checker --endpoint=https://dataflow.googleapis.com/ --region=asia-south1
               ExecStartPre=/bin/mkdir -p /etc/kubernetes/manifests
               ExecStartPre=/bin/bash /etc/dataflow/run_image_prepuller.sh
               ExecStart=/usr/bin/kubelet --manifest-url=http://metadata.google.internal/computeMetadata/v1/instance/attributes/google-container-manifest --manifest-url-header=Metadata-Flavor:Google --pod-manifest-path=/etc/kubernetes/manifests --eviction-hard= --image-gc-high-threshold=100
               Restart=always
               RestartSec=20
               TimeoutStartSec=900
            
              owner: root
              path: /etc/systemd/system/kubelet.service
              permission: 0644
            -
              content: |
               [Unit]
               Description=Start Dataflow host agent
               Wants=network-online.target
               After=network-online.target
            
               [Service]
               ExecStart=/var/lib/agent/agent --endpoint=https://dataflow.googleapis.com/ --region=asia-south1
               Restart=always
               RestartSec=20
            
              owner: root
              path: /etc/systemd/system/agent.service
              permission: 0644
            -
              content: |
               [Unit]
               Description=Start Dataflow resource capture agent
               Wants=network-online.target
               After=network-online.target
            
               [Service]
               ExecStart=/var/lib/agent/resource_capture --endpoint=https://dataflow.googleapis.com/ --region=asia-south1
               Restart=always
               RestartSec=20
            
              owner: root
              path: /etc/systemd/system/resource.service
              permission: 0644
        EOT
        "windmill_config"           = jsonencode(
            {
                windmill_args  = [
                    "--wm_pubsub_modify_ack_deadlines",
                ]
                windmill_flags = {
                    base_windmill_data_dir      = "/windmill"
                    wm_api_service_port         = 12347
                    wm_enable_debug_reporting   = true
                    wm_max_exceptions_per_range = 10
                    wm_max_stack_trace_depth    = 10
                    wm_service_port             = 12346
                    wm_status_port              = 8080
                    wm_workflow_url             = "https://dataflow.googleapis.com/"
                }
            }
        )
        "worker_pool"               = "mv-teltonikagps-data-09092054-0wlp-harness"
    }
    metadata_fingerprint = "EQr2fS-QiEs="
    name                 = "mv-teltonikagps-data-09092054-0wlp-harness-j048"
    project              = "ford-data-fusion-project"
    resource_policies    = []
    self_link            = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/instances/mv-teltonikagps-data-09092054-0wlp-harness-j048"
    tags                 = [
        "dataflow",
    ]
    tags_fingerprint     = "Loc0dSkS-b8="
    zone                 = "asia-south1-b"

    attached_disk {
        device_name = "mv-teltonikagps-data-09092054-0wlp-harness-disk-2"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-2"
    }
    attached_disk {
        device_name = "mv-teltonikagps-data-09092054-0wlp-harness-disk-0"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-0"
    }
    attached_disk {
        device_name = "mv-teltonikagps-data-09092054-0wlp-harness-disk-1"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-disk-1"
    }

    boot_disk {
        auto_delete = true
        device_name = "persistent-disk-0"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/zones/asia-south1-b/disks/mv-teltonikagps-data-09092054-0wlp-harness-j048"

        initialize_params {
            image  = "https://www.googleapis.com/compute/v1/projects/dataflow-service-producer-prod/global/images/dataflow-dataflow-owned-resource-20210830-02-rc01"
            labels = {}
            size   = 30
            type   = "pd-standard"
        }
    }

    network_interface {
        name               = "nic0"
        network            = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/global/networks/default"
        network_ip         = "10.160.0.4"
        queue_count        = 0
        stack_type         = "IPV4_ONLY"
        subnetwork         = "https://www.googleapis.com/compute/v1/projects/ford-data-fusion-project/regions/asia-south1/subnetworks/default"
        subnetwork_project = "ford-data-fusion-project"

        access_config {
            nat_ip       = "34.93.214.37"
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
        email  = "398013698563-compute@developer.gserviceaccount.com"
        scopes = [
            "https://www.googleapis.com/auth/any-api",
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/datastore",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
            "https://www.googleapis.com/auth/ndev.cloudman",
            "https://www.googleapis.com/auth/pubsub",
            "https://www.googleapis.com/auth/userinfo.email",
        ]
    }

    shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
        enable_vtpm                 = true
    }

    timeouts {}
}