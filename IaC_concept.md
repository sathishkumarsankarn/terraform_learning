IaC --> Infrastructure as Code

# Traditional IT Infrastructure and its challenges --> Screenshot
# WorkFlow -
Business -> Business Analyst -> Solution Architect -> Procurement Team -> Infrastrcture Team (Field Engineers, Network Admin, Storage Admin, backup Admin) -> Data Centers -> Application team.
# Drawbacks - 
    Slow deployment, scaling up and down is complex and time taking process, High Cost, Limited Automation option, Different teams are working due to that reason, chance of Human Error is high, Inconsistency, Under Utilization of resource (High Wastage)
<img width="938" alt="traditional IT infrastructure and its challenges" src="https://github.com/sathishkumarsankarn/terraform_learning/assets/41965179/51d1d85a-d16c-4e28-9385-599616ac8203">

# IaC Tools -
  # Configuration management tools - Anisble, Chef, Puppet, saltstack
  # Server Templating tools - Docker, Hashicop Packer, Vagrant
  # Provisiong Tools - Terraform, CloudFormation


# CONFIGURATION MANAGEMENT TOOLS -
  These are commonly used to install and manage software on existing infrastructure resources such as servers, databases, networking devices, etcetera.Unlike the ad hoc shell scripts that we saw earlier, configuration management tools maintain a consistent and standard structure of code, and this makes it easier to manage and update it as needed. They are also designed to run on multiple remote resources at once.
    # **idempotent** -> This means that you can run the code multiple times and every time you run it, it will only make changes that are necessary to bring the environment into a defined state. It would leave anything already in place as it is without us having to write any additional code.


# SERVER TEMPLATING TOOLS -
    These are tools like Docker, Vagrant and Packer from Hashicorp that can be used to create a custom image of a virtual machine or a container.These images already contain all the required software and dependencies installed on them and for the most part, this eliminates the need of installing software after a VM or a container is deployed. The most common examples for server templated images are VM images such as those that are offered on OS boxes.
    Server templating tools also promote immutable infrastructure, unlike configuration management tools.This means that once the VM or a container is deployed, it is designed to remain unchanged.If there are changes to be made to the image instead of updating the running instance, like in the case of configuration management tools such as Ansible, we update the image and then redeploy a new instance using the updated image.
