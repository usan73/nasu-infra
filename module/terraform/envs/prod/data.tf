# ------------------------------------------------------------#
#  EC2
# ------------------------------------------------------------#

data "aws_instance" "nat" {

  filter {
    name   = "tag:Name"
    values = ["${local.PJPrefix}-${local.EnvPrefix}-nat"]
  }

}