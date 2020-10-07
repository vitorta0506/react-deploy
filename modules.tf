module "network" {
  source = "./modules/network"

  cluster_name = var.cluster_name
  region       = var.region
}

module "ecs" {
  source = "./modules/ecs"

  cluster_name = var.cluster_name
  region       = var.region
}

module "ecr" {
  source = "./modules/ecr"

  cluster_name = var.cluster_name
  region       = var.region
  app_dev      = var.app_dev
}

module "pipe" {
  source = "./modules/pipe"

  cluster_name = var.cluster_name
  region       = var.region
  app_dev      = var.app_dev
}