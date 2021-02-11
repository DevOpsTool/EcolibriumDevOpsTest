# Building the web server infrastructure

After setting up your devops env and exporting your AWS user credentials to the environment you should and install Terrform 0.12:

``Edit **terraform.tfvars** and set your correct IP address so that you and only you can ssh into the ec2 instance``

Next, build the web server from within the web-server directory by:

``terraform init``

``terraform apply``

**Access your web server instance at the public IP displayed in the console output.**

**Give the instance at least 5 minutes to start AFTER the script has finished**

# SSH into your EC2 instance

You can ssh into the EC2 instance using:

``ssh -i ~/.ssh/id_rsa ubuntu@THE_PUBLIC_IP_DISPLAYED_IN_THE_CONSOLE``
# Running the check The Webserver is up or not

Run the tests from within the EcolibriumDevOpsTest directory

``./checker.sh devopstest.webnaveen.com``

# Removing the web server infrastructure

When you are ready to remove your infrastructure execute from inside the web-server directory

``terraform destroy``
