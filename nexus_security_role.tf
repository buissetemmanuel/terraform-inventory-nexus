resource "nexus_security_role" "docker_central_read" {
  description = "Docker central read role"
  name        = "docker-central-read"
  privileges = [
    "nx-repository-view-docker-docker-central-read"
  ]
  roleid = "docker-central-read"
}

resource "nexus_security_role" "docker_releases_add" {
  description = "Docker releases add role"
  name        = "docker-releases-add"
  privileges = [
    "nx-repository-view-docker-docker-releases-add"
  ]
  roleid = "docker-releases-add"
}

resource "nexus_security_role" "docker_snapshots_add" {
  description = "Docker snapshots add role"
  name        = "docker-snapshots-add"
  privileges = [
    "nx-repository-view-docker-docker-snapshots-add"
  ]
  roleid = "docker-snapshots-add"
}

resource "nexus_security_role" "maven_central_read" {
  description = "Maven central read role"
  name        = "maven-central-read"
  privileges = [
    "nx-repository-view-maven2-maven-central-read"
  ]
  roleid = "maven-central-read"
}

resource "nexus_security_role" "maven_releases_add" {
  description = "Maven releases add role"
  name        = "maven-releases-add"
  privileges = [
    "nx-repository-view-maven2-maven-releases-add"
  ]
  roleid = "maven-releases-add"
}

resource "nexus_security_role" "maven_snapshots_add" {
  description = "Maven snapshots add role"
  name        = "maven-snapshots-add"
  privileges = [
    "nx-repository-view-maven2-maven-snapshots-add"
  ]
  roleid = "maven-snapshots-add"
}
