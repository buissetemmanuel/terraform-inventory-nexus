resource "nexus_repository_docker_group" "docker_central" {
  name   = "docker-central"
  online = true

  docker {
    force_basic_auth = false
    v1_enabled       = false
    http_port        = 8082
  }

  group {
    member_names = [
      nexus_repository_docker_hosted.docker_releases.name,
      nexus_repository_docker_hosted.docker_snapshots.name,
      nexus_repository_docker_proxy.dockerhub.name
    ]
  }

  storage {
    blob_store_name                = "docker"
    strict_content_type_validation = true
  }
}
