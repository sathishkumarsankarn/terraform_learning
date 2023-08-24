terraform init
terraform plan
terraform apply

terraform validate            # It validates the configuration file and provide us the result
terraform fmt                 # it will format (indent) the configuration file and make it more readable
terraform show                # it shows the resources available in infrastructure
terraform show -json          # it will print the details in json format
terraform providers           # it will show all the providers used in that terraform directory to create resources
terraform providers mirror /root/terraform/new_local_file     # it helps to copy the providers from current directory to new directory
terraform output              # To see all the output of the terraform created resource variables
terraform output <variable_name>    # it will print the output value of this variable alone.
terraform refresh             # if there is any manual change in resource, then this command will identify those changes and update it in terraform state file
terraform plan -refresh=false      # This command will not perform refresh option. Note - refreshing state is default operation while executing plan and apply commands.
terraform graph               # it shows the dependency in configuration file between resources in a graphical presentation

apt update
apt install graphviz -y
terraform graph | dot -Tsvg > graph.svg


