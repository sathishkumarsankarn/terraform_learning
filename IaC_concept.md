IaC --> Infrastructure as Code

# Traditional IT Infrastructure and its challenges --> Screenshot
WorkFlow -
Business -> Business Analyst -> Solution Architect -> Procurement Team -> Infrastrcture Team (Field Engineers, Network Admin, Storage Admin, backup Admin) -> Data Centers -> Application team.
# Drawbacks - Slow deployment, scaling up and down is complex and time taking process, High Cost, Limited Automation option, Different teams are working due to that reason, chance of Human Error is high, Inconsistency, Under Utilization of resource (High Wastage)
<img width="938" alt="traditional IT infrastructure and its challenges" src="https://github.com/sathishkumarsankarn/terraform_learning/assets/41965179/51d1d85a-d16c-4e28-9385-599616ac8203">

# IaC Tools -
  # Configuration management tools - Anisble, Chef, Puppet, saltstack
  # Server Templating tools - Docker, Hashicop Packer, Vagrant
  # Provisiong Tools - Terraform, CloudFormation

# CONFIGURATION MANAGEMENT TOOLS -
  These are commonly used to install and manage software on existing infrastructure resources such as servers, databases, networking devices, etcetera.Unlike the ad hoc shell scripts that we saw earlier, configuration management tools maintain a consistent and standard structure of code, and this makes it easier to manage and update it as needed. They are also designed to run on multiple remote resources at once.

