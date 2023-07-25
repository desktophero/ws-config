# Commands

## Colima

```shell
colima start --kubernetes --arch aarch64 --cpu 4 --memory 8 --disk 120
```

## Ansible Roles

- Add any new roles to `requirements.yml`
- Execute `ansible-galaxy install -r ./requirements.yml`

## Terraform

- Run `tfenv list-remotes` to view available versions
- Run `tfenv install <versionNumber>` to download and make available the version
- Run `tfenv use <versionNumber>` for that specific version to be available in your $PATH

Example output:

```shell
> tfenv list-remote
1.6.0-alpha20230719
1.5.3
1.5.2
1.5.1
1.5.0
1.5.0-rc2
1.5.0-rc1
1.5.0-beta2
1.5.0-beta1
1.5.0-alpha20230504
1.5.0-alpha20230405
1.4.6
[...]

❯ tfenv install 1.3.7
Installing Terraform v1.3.7
Downloading release tarball from https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_darwin_arm64.zip
######################################################################################################################################################################################################################################################### 100.0%
Downloading SHA hash file from https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_SHA256SUMS
Not instructed to use Local PGP (/opt/homebrew/Cellar/tfenv/3.0.0/use-{gpgv,gnupg}) & No keybase install found, skipping OpenPGP signature verification
Archive:  /var/folders/yr/47n4x4lx5kx98nxkn6lr4xhh0000gn/T/tfenv_download.XXXXXX.exg1d2uS/terraform_1.3.7_darwin_arm64.zip
  inflating: /opt/homebrew/Cellar/tfenv/3.0.0/versions/1.3.7/terraform
Installation of terraform v1.3.7 successful. To make this your default version, run 'tfenv use 1.3.7'

❯ tfenv use 1.3.7
Switching default version to v1.3.7
Default version (when not overridden by .terraform-version or TFENV_TERRAFORM_VERSION) is now: 1.3.7

❯ which terraform
/opt/homebrew/bin/terraform

❯ terraform --version
Terraform v1.3.7
on darwin_arm64

Your version of Terraform is out of date! The latest version
is 1.5.3. You can update by downloading from https://www.terraform.io/downloads.html
```
