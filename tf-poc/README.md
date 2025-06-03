This project uses Terraform to deploy a small Flask app.


# Requirements

- Terraform (1.12.1)

# Deployment

1. Git clone this repository
2. Navigate to the folder `tf-poc`
3. Run the following Terraform commands:

- `terraform init`

- `terraform plan`

- `terraform apply`

4. Applying the `lb` module will print three outputs. Copy the value of `public_ip` and paste it into the browser. The app is reachable under `http://<loadbalancer-ip>/quote`.

5. Wait for some time to access the app after the VM has been deployed. It needs a moment to provision the necessary packages to run the app. 

6. Be humbled by that quote of the day. 

# TODO:

- Secrets should be handled nicer (via a pipeline). Manually setting them here for ease of use of this demo.
- Leave the creation of the security group free from hard-coded variables