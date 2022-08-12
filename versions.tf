terraform {
  required_version = ">= 1.2.7"
  experiments      = [module_variable_optional_attrs]
  cloud {
    organization = "cklewar"
    hostname     = "app.terraform.io"

    workspaces {
      name = "f5-xc-modules"
    }
  }

  required_providers {
    f5xc = {
      source  = "volterraedge/volterra"
      version = ">= 0.11.11"
    }

    local = ">= 2.2.3"
    null  = ">= 3.1.1"
  }
}