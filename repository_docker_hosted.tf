resource "nexus_repository_docker_hosted" "docker_releases" {
  name   = "docker-releases"
  online = true

  docker {
    force_basic_auth = false
    v1_enabled       = false
    http_port        = 8084
  }

  storage {
    blob_store_name                = "docker"
    strict_content_type_validation = true
    write_policy                   = "ALLOW_ONCE"
  }
}

resource "nexus_repository_docker_hosted" "docker_snapshots" {
  name   = "docker-snapshots"
  online = true

  docker {
    force_basic_auth = false
    v1_enabled       = false
    http_port        = 8085
  }

  storage {
    blob_store_name                = "docker"
    strict_content_type_validation = true
    write_policy                   = "ALLOW"
  }
}
