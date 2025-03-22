# pihole-gravity-cronjob
CronJob to update Gravity list on a Pi-Hole via REST API.

## Secrets
- APP_HOST - REST API Host (e.g. `https://pi.hole:443`)
- APP_PWD - Application password for Pi-Hole instance

## Development Notes
This project includes Skaffold profiles and Kustomize configuration specific to my Kubernetes cluster. To run this script elsewhere, update the `skaffold.yaml` file and CronJob manifest in the Kubernetes configuration dir.

The 'dev' Skaffold profile converts the CronJob object to a Job for ease of development. To run the script as a Job in the configured namespace for the dev profile, run `skaffold dev` in the project root.

## Licensing

MIT License

Copyright (c) 2025 github.com/glennpai

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
