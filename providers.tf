terraform {
  required_version = ">1.8.4"

  backend "s3" {
    
    region="ru-central1"

    bucket     = "mai-netology-tfstate"
    key = "production/terraform.tfstate"
    
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true # Необходимая опция Terraform для версии 1.6.1 и старше.
    skip_s3_checksum            = true # Необходимая опция при описании бэкенда для Terraform версии 1.6.3 и старше.

  endpoints ={
    dynamodb = "https://docapi.serverless.yandexcloud.net/ru-central1/b1gj5s56d4t25l209u0f/etncr170neo5u60ne267"
    s3 = "https://storage.yandexcloud.net"
  }

    dynamodb_table              = "tfstate-lock"
  }

  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = ">= 0.47.0"
    }
    
    template = {
      source  = "hashicorp/template"
      version = ">= 2.2.0"
    }
  }
}

provider "yandex" {
#  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
  service_account_key_file = file("~/.authorized_key.json")
}
