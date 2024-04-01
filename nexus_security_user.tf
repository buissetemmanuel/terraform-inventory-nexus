resource "nexus_security_user" "admin_user" {
  userid    = "admin_user"
  firstname = "Administrator"
  lastname  = "User"
  email     = "info@buisset.ch"
  password  = var.NEXUS_ADMIN_PASSWORD
  roles     = ["nx-admin"]
  status    = "active"
}

resource "nexus_security_user" "docker_user" {
  userid    = "docker_user"
  firstname = "Docker"
  lastname  = "User"
  email     = "info@buisset.ch"
  password  = var.NEXUS_DOCKER_PASSWORD
  roles     = ["docker-central-read", "docker-releases-add", "docker-snapshots-add"]
  status    = "active"
}

resource "nexus_security_user" "maven_user" {
  userid    = "maven_user"
  firstname = "Maven"
  lastname  = "User"
  email     = "info@buisset.ch"
  password  = var.NEXUS_MAVEN_PASSWORD
  roles     = ["maven-central-read", "maven-releases-add", "maven-snapshots-add"]
  status    = "active"
}
