group "default" {
  targets = [
    "flask",
    "flask-local"
  ]
}

target "flask" {
  dockerfile = "Dockerfile"
  tags      = [
    "nullstone/flask"
  ]
}

target "flask-local" {
  dockerfile = "local.Dockerfile"
  tags      = [
    "nullstone/flask:local"
  ]
}
