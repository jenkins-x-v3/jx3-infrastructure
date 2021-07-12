module "eks-jx" {
  source          = "github.com/jenkins-x/terraform-aws-eks-jx?ref=v1.15.12"
  vault_user = "kgocheva"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  region          = var.region 
  is_jx2          = false
  jx_git_url      = var.jx_git_url
  jx_bot_username = var.jx_bot_username
  jx_bot_token    = var.jx_bot_token
  force_destroy   = var.force_destroy
  enable_external_dns = var.enable_external_dns
  apex_domain     = var.apex_domain
  enable_tls      = var.enable_tls
  production_letsencrypt = var.production_letsencrypt
  tls_email       = var.tls_email
}
