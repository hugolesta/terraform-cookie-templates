module "label1" {
  source      = "{{cookiecutter.source}}"
  namespace   = "{{cookiecutter.namespace}}"
  tenant      = "{{cookiecutter.tenant}}"
  environment = "{{cookiecutter.environment}}"
  stage       = "{{cookiecutter.stage}}"
  name        = "{{cookiecutter.name}}"
  tags = {
    "City" = "{{cookiecutter.city}}"
  }
}
