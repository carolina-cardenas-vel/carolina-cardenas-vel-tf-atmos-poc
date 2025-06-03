This project uses Terraform to deploy a small Flask app.


# Requirements

- Terraform (1.12.1)

# Deployment

1. Git clone this repository
2. Navigate to the folder `tf-poc`
3. Create the `backend.tf.json` file. Take the `backend.tf.json.example`, rename it and adapt it.
4. Create an ssh key with this name and path `~/.ssh/ssh-vm-tf-poc.pub`. It will be used for setting up the VM.
5. Run the following Terraform commands:

- `terraform init`

- `terraform plan`

- `terraform apply`

6. Applying the `lb` module will print three outputs. Copy the value of `public_ip` and paste it into the browser. The app is reachable under `http://<loadbalancer-ip>/quote`.

7. Wait for some time to access the app after the VM has been deployed. It needs a moment to provision the necessary packages to run the app. 

8. Be humbled by that quote of the day. 

# TODO:

- Leave the creation of the security group free from hard-coded variables