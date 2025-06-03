*Disclaimer*:

I have been asked to demonstrate Azure skills as part of the client interview process. 
NO CLIENT DATA and no proprietary client information has been used. 
This is an interview exercise only.

---
### Task

"Create a terraform / ATMOS project that would deploy a VM into Azure and deploy a hello world site? Create a vnet, a VM or a vm scale set, and a load balancer, then deploy a hello world app in the VM(s)."

### Description of the project

With the task at hand, the following project deploys a simple Flask application running on a VM. The app displays a random quote from a set of 5. It's reachable under `http://<loadbalancer-ip>/quote` (during the review, there's a running version of this demo at `http://13.93.152.214/quote`)

With the purpose of polishing my Terraform skills and have a clear picture of the components I was building and their configuration, first, I decided to create the whole project in pure Terraform. That code is found under the `tf-poc` folder. The `poc-tf-atmos` folder contains the code to my first approach to atmos.

### Environment

A basic environment was manually bootstrapped for this demo:

1. A Resource Group (to organize resources)
2. Storage Account (to store the state file)
3. Blob Container (to hold the terraform.tfstate file)

### Components

These are the components that will be created by this demo:

- Virtual Network
- Load Balancer
- Security Groups
- Public IPs
- NAT
- VM
- Nic

### Deployment

Refer to the README.md files in each folder for more details.


