# Symmetry Assessment IAM policies and  roles

A read-only set of permissions applied to a user group.  A selected set of services have been applied using the two variables `allowed_services_one` and `allowed_services_two`.  They are split because of the policy size (default) limitation.  To add services simply go to [AWS Documentation](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) to get the service context key and add it to variable two.  

## Dependencies

- Terraform (v~>1.6)
- AWS Account
- AWS Admin role

## Create IAM Permission and user group

Note: Required to supply a userId to apply perimssions too

```sh
terraform init
terraform apply

```

## Destroy IAM Permission and user group

```sh
terraform destroy
```
