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

output "tags" {
  value = {
    id        = module.tags.id
    name      = module.tags.name
    namespace = module.tags.namespace
    stage     = module.tags.stage
    tenant    = module.tags.tenant

  }
}
