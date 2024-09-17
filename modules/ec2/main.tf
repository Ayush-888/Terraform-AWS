resource "aws_instance" "apispocc_server" {
  ami = var.ami_type_ec2
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id
  key_name = var.key_name

  root_block_device {
    volume_size = 16
    volume_type = "gp2"
  }

  tags = {
    Name = var.web_server
  }

  user_data = <<-EOF
    #!/bin/bash
    # Installing Java
    apt update -y
    apt install openjdk-17-jre -y
    java --version

    # Installing Jenkins
    curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
        /usr/share/keyrings/jenkins-keyring.asc > /dev/null
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
        https://pkg.jenkins.io/debian binary/ | sudo tee \
        /etc/apt/sources.list.d/jenkins.list > /dev/null
    sudo apt-get update -y
    sudo apt-get install jenkins -y

    # Start Jenkins service
    sudo systemctl start jenkins

    # Enable Jenkins service to start on boot
    sudo systemctl enable jenkins
  EOF
}

resource "aws_eip" "apispocc_eip" {
  instance = aws_instance.apispocc_server.id
}