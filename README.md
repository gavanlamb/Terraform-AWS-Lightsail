# Terraform AWS Lightsail
Create static ip, key pair, and a lightsail instance

## Variables
### Input
| Variables         | Description                                                 | Default |
|:------------------|:------------------------------------------------------------|:--------|
| company           | Company name                                                |         |
| environment       | Environment name                                            |         |
| name              | Name                                                        |         |
| service           | Service name                                                |         |
| key-pair-name     | Name of the key pair                                        |         |
| instance-name     | Name of the lighsail instance                               |         |
| availability-zone | Availability zone of the lighsail instance                  |         |
| blueprint-id      | The ID for a virtual private server image                   |         |
| bundle-id         | The bundle of specification information                     |         |
| user-data         | Launch script to configure server with additional user data |         |
| tags              | Tags for the certificate resources                          |         |

### Output
| Variables         | Description                           |
|:------------------|:--------------------------------------|
| static-ip-address | Created static ip address             |
| private-key       | Private key of the lightsail key pair |

## How to
Specify the module source and the provider information.

### Sample
```
provider "aws" {
    region = ""
    shared_credentials_file = ""
    profile = ""
}

module "lightsail" {
    source = "github.com/Haplo-tech/Terraform.Module.AWS.Lightsail"
    company = ""
    environment = ""
    name = ""
    service = ""
    key-pair-name = ""
    instance-name = ""
    availability-zone = ""
    blueprint-id = ""
    bundle-id = ""
    user-data = ""
    tags = {}
}
```
