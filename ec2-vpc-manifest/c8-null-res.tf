resource "null_resource" "ec_null_res" {
    depends_on = [ module.ec2_public, module.vpc, aws_eip.ec2_eip ]
    connection {
        type = "ssh"
        host = aws_eip.ec2_eip.public_ip
        user = "ec2-user"
        password = ""
        private_key = "private_key\terraform-key1.pem"
    }

    provisioner "file" {
        source = "private_key\terraform-key1.pem"
        destination = "/tmp/terraform-key.pem"
    }

    provisioner "remote-exec" {
        inline = [ "sudo chmod 400 /tmp/terraform-key.pem" ]
    }

    provisioner "local-exec" {
        command = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
        working_dir = "local-exec-output-files/"
        on_failure = continue
    }

    provisioner "local-exec" {
        command = "echo VPC deleted on `date` >> deletion-time-vpc-id.txt"
        when = destroy
        working_dir = "local-exec-output-files/"
        on_failure = continue
    }

}