module "catalogue" {
  source = "git::https://github.com/daws-76s/terraform-roboshop-app.git?ref=main"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  component_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value) #list of private subnte_ids
  iam_instance_profile = var.iam_instance_profile
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  tags = var.tags
  zone_name = var.zone_name
  app_alb_listener_arn = data.aws_ssm_parameter.app_alb_listener_arn.value
  rule_priority = 20
  app_version = var.app_version
}