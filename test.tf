resource "kubernetes_cron_job_v1" "demo" {
  metadata {}
  spec {
    job_template {
      metadata {}
      spec {
        template {
          metadata {}
          spec {
            container {
              name    = "kaniko"
              image   = "gcr.io/kaniko-project/executor:v1.9.0@sha256:1f982af0b54be748221d9a35dcfa608660ab3d51229aa56bde5416f75aff7561"
            }
            container {
              name    = "node"
              image   = "node:14"
            }
          }
        }
      }
    }
    schedule = ""
  }
}
