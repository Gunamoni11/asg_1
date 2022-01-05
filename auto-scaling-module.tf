module "auto-scaling" {
  source = "./auto-scaling"

#Note: 1. Create Target Group First
  #    2. Create Application Load Balancer
  #    3. Create Auto-Scaling Group

  region = "us-east-2"

  #SSH Keys Genration
  key-name = "power"
  public-key-file-name = "${file("./modules/auto-scaling/power.pub")}"

  #Launch Configuration

  launch-configuration-name = "test-lc"
  image-id = "ami-0fb653ca2d3203ac1"
  instance-type = "t2.micro"
  launch-configuration-security-groups = "${module.cloudgeeks-ec2-sg.ec2-sg-security-group}"
  launch-configuration-public-key-name = "power"

  #Auto-Scaling

  autoscaling-group-name = "test-asg"
  max-size = "2"
  min-size = "1"
  health-check-grace-period = "300"
  desired-capacity = "2"
  force-delete = "true"
  #A list of subnet IDs to launch resources in
  vpc-zone-identifier = "${module.vpc.public-subnet-ids}"
  health-check-type = "ELB"
  tag-key = "Name"
  tag-value = "testing" 
}
