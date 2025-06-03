This project uses Terraform and Atmos to deploy a small Flask app.


# Requirements

- Atmos (v1.178.0)
- Terraform (1.12.1)

# Deployment

1. Git clone this repository
2. Navigate to the folder `atmos-poc`
3. Set the following environment variables on your shell:

```
TF_VAR_tenant_id=xxxx-xxx-xxx-x-x-xxxx
TF_VAR_subscription_id=xxxx-xxx-xxx-x-x-xxxx
```
4. Run Atmos either in interactive mode or with the following commands:

- `atmos terraform init <component-name> -s dev`

- `atmos terraform plan <component-name> -s dev`

- `atmos terraform apply <component-name> -s dev`

5. Applying the `lb` module will print three outputs. Copy the value of `public_ip` and paste it into the browser. The app is reachable under `http://<loadbalancer-ip>/quote`.

6. Wait for some time to access the app after the VM has been deployed. It needs a moment to provision the necessary packages to run the app. 

7. Be humbled by that quote of the day. 

# TODO:

- Secrets should be handled nicer (via a pipeline). Manually setting them here for ease of use of this demo.