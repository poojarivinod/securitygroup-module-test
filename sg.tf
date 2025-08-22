module "mysql_sg" {
    source = "..//terraform-aws-securitygroup" #for testing , once completed use below source
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "created for MySQL instance in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value # # it read the content of /expense/dev//vpc_id ssm parameter
    common_tags = var.common_tags
}