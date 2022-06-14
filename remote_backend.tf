terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashicat-azureshao"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
