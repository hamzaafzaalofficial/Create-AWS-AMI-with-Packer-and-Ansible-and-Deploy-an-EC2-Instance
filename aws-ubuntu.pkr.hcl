packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.1"
      source  = "github.com/hashicorp/amazon"
    }
    ansible = {
      version = ">= 1.1.0"
      source  = "github.com/hashicorp/ansible"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  access_key    = "AK7OFJNFF"
  secret_key    = "7dPRLn8V3jUvA44in"
  ami_name      = "my-first-packer-image"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami    = "ami-04b4f1a9cf54c11d0"
  ssh_username  = "ubuntu"
  ssh_timeout = "20m"
  ssh_handshake_attempts = "20"
}

build {
  name    = "my-first-build"
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "ansible" {
    playbook_file = "./playbook.yml"
    user = "ubuntu"
    use_proxy = false
    extra_arguments = [
        "-e", "ansible_sudo_pass=''",
        "-e", "ansible_ssh_common_args='-o StrictHostKeyChecking=no'"
    ]
  } 
} 
