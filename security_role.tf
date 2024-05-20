resource "nexus_security_role" "docker_central" {
  description = "Docker central role"
  name        = "docker-central"
  privileges = [
    "nx-repository-view-docker-docker-central-*"
  ]
  roleid = "docker-central"
}

resource "nexus_security_role" "docker_releases" {
  description = "Docker releases role"
  name        = "docker-releases"
  privileges = [
    "nx-repository-view-docker-docker-releases-*"
  ]
  roleid = "docker-releases"
}

resource "nexus_security_role" "docker_snapshots" {
  description = "Docker snapshots role"
  name        = "docker-snapshots"
  privileges = [
    "nx-repository-view-docker-docker-snapshots-*"
  ]
  roleid = "docker-snapshots"
}

resource "nexus_security_role" "maven_central" {
  description = "Maven central role"
  name        = "maven-central"
  privileges = [
    "nx-repository-view-maven2-maven-central-read"
  ]
  roleid = "maven-central"
}

resource "nexus_security_role" "maven_releases" {
  description = "Maven releases role"
  name        = "maven-releases"
  privileges = [
    "nx-repository-view-maven2-maven-releases-add",
    "nx-repository-view-maven2-maven-releases-edit",
    "nx-repository-view-maven2-maven-releases-read"
  ]
  roleid = "maven-releases"
}

resource "nexus_security_role" "maven_snapshots" {
  description = "Maven snapshots role"
  name        = "maven-snapshots"
  privileges = [
    "nx-repository-view-maven2-maven-snapshots-add",
    "nx-repository-view-maven2-maven-snapshots-edit",
    "nx-repository-view-maven2-maven-snapshots-read"
  ]
  roleid = "maven-snapshots"
}
