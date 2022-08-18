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
              image   = "gcr.io/kaniko-project/executor:v1.7.0@sha256:8504bde9a9a8c9c4e9a4fe659703d265697a36ff13607b7669a4caa4407baa52"
            }
            container {
              name    = "node"
              image   = "node:18"
            }
          }
        }
      }
    }
    schedule = ""
  }
}
