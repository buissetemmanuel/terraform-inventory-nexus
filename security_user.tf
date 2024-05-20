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
  roles     = ["docker-central", "docker-releases", "docker-snapshots"]
  status    = "active"
}

resource "nexus_security_user" "maven_user" {
  userid    = "maven_user"
  firstname = "Maven"
  lastname  = "User"
  email     = "info@buisset.ch"
  password  = var.NEXUS_MAVEN_PASSWORD
  roles     = ["maven-central", "maven-releases", "maven-snapshots"]
  status    = "active"
}
