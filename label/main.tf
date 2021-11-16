module "label1" {
  source      = "{{cookiecutter.source}}"
  namespace   = "{{cookiecutter.namespace}}"
  tenant      = "{{cookiecutter.tenant}}"
  evinronment = "{{cookiecutter.evinronment}}"
  stage       = "{{cookiecutter.stage}}"
  name        = "{{cookiecutter.name}}"
  attributes  = "{{cookiecutter.attributes}}"

  label_order = "{{cookiecutter.label_order}}"

  tags = {
    "City" = "{{cookiecutter.city}}"
  }
}
