module "tags" {
  source      = "{{cookiecutter.labels_source}}"
  namespace   = "{{cookiecutter.namespace}}"
  tenant      = "{{cookiecutter.tenant}}"
  environment = "{{cookiecutter.environment}}"
  stage       = "{{cookiecutter.stage}}"
  name        = "{{cookiecutter.name}}"
  tags = {
    "City" = "{{cookiecutter.city}}"
  }
}

output "labels" {
  value = module.tags.context
}
