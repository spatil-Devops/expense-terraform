module "frontend" {
  depends_on = [module.backend]
  source = "git::https://github.com/spatil-Devops/tf-module-app.git"

  name         = var.components["frontend"]["name"]
  instance_type = var.components["frontend"]["instance_type"]
  env           = var.env
  port_no       = var.components["frontend"]["port_no"]
}

module "mysql" {
  source = "git::https://github.com/spatil-Devops/tf-module-app.git"

  name          = var.components["mysql"]["name"]
  instance_type = var.components["mysql"]["instance_type"]
  env           = var.env
  port_no       = var.components["mysql"]["port_no"]
}

module "backend" {
  depends_on = [module.mysql]
  source = "git::https://github.com/spatil-Devops/tf-module-app.git"

  name          = var.components["backend"]["name"]
  instance_type = var.components["backend"]["instance_type"]
  env           = var.env
  port_no       = var.components["backend"]["port_no"]
}