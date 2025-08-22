module "mysql_sg" {
    source = "..//terraform-aws-securitygroup" #for testing , once completed use below source
    project_name = expense
    environment = dev
    sg_name = "mysql"
    sg_description = "created for MySQL instance in expense dev"
}