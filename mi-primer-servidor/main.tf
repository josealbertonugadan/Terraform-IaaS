provider "aws" {
    region = "us-east-1"
}

data "aws_vpc" "default" {
    default = true
}

resource "aws_instance" "mi_servidor" {
    ami = "ami-005fc0f236362e99f"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.mi_grupo_de_seguridad.id]

user_data = <<-EOF
            #!/bin/bash
            apt-get update
            apt-get install -y busybox-static
            echo "Hola Terraformers!" > index.html
            nohup busybox httpd -f -p 8080 &
            EOF

    tags = {
        Name = "Mi primer servidor"      
    }
}

resource "aws_security_group" "mi_grupo_de_seguridad" {
    name   = "primer-servidor-sg"
    vpc_id = data.aws_vpc.default.id
    ingress {
        cidr_blocks = ["0.0.0.0/0"]
        description = "Acceso al puerto 8080 desde el exterior"
        from_port   = 8080
        to_port     = 8080
        protocol    = "TCP"
    }
}
