# pihole-gravity-cronjob
CronJob to update Gravity list on a Pi-Hole via REST API.

# Secrets
- APP_HOST - REST API Host (e.g. `https://pi.hole:443`)
- APP_PWD - Application password for Pi-Hole instance

# Developmenet Notes
This project includes Skaffold profiles and Kustomize configuration specific to my Kubernetes cluster. To run this script elsewhere, update the `skaffold.yaml` file and CronJob manifest in the Kubernetes configuration dir. 

The 'dev' Skaffold profile converts the CronJob object to a Job for ease of development. To run the script as a Job in the configured namespace for the dev profile, run `skaffold dev` in the project root.
