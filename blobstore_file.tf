resource "nexus_blobstore_file" "docker" {
  name = "docker"
  path = "/nexus-data/blobstore-docker"
}

resource "nexus_blobstore_file" "maven" {
  name = "maven"
  path = "/nexus-data/blobstore-maven"
}
