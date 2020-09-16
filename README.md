# CIS Security Benchmark for Ubuntu 16.04 Xenial

## >>>>>>> WARNING: Do NOT run this playbook on existing systems! This playbook is meant to be run as the initial config base <<<<<<<<<

## Overview
This playbook is based on the controls defined within the CIS Ubuntu Linux 16.04 LTS Benchmark, v1.0.0. For more details on control definitions, please visit the the benchmark [here](https://git.int.evident.io/devops/devops/tree/master/ansible/playbooks/roles/cis-ubuntu-xenial/docs/CIS_Ubuntu_Linux_16.04_LTS_Benchmark_v1.0.0.pdf)

## Playbook Tasks
Each task is based on the security control defined in the CIS Ubuntu Linux 16.04 LTS Benchmark document above.

### Playbook Task Organization Table

1. Initial Setup
  - 1.1 Filesystem configuration - section_01_level1.yml
  - 1.2 Configure Software updates - section_01_level2.yml
  - 1.3 Filesystem Integrity Checking - section_01_level3.yml
  - 1.4 Secure Boot Settings - section_01_level4.yml
  - 1.5 Additional Process Hardening - section_01_level5.yml
  - 1.6 Mandatory Access controls - section_01_level6.yml
  - 1.7 Warning Banners - section_01_level7.yml
  - 1.8 Ensure updates, patches, and additional security software are installed - section_01_level8.yml

2. Services
  - 2.1 inetd Services - section_02_level1.yml
  - 2.2 Special Purpose Services - section_02_level2.yml
  - 2.3 Service Clients - section_02_level3.yml

3. Network Configuration
  - 3.1 Network Parameters (Host Only) - section_03_level1.yml
  - 3.2 Network Parameters (Host and Router) - section_03_level2.yml
  - 3.3 IPv6 - section_03_level3.yml
  - 3.4 TCP Wrappers - section_03_level4.yml
  - 3.5 Uncommon Network Protocols - section_03_level5.yml
  - 3.6 Firewall configuration - section_03_level6.yml
  - 3.7 Ensure wireless interfaces are disabled (Not Scored) - section_03_level7.yml

4. Logging and Auditing
  - 4.1 Configure System Accounting (auditd) - section_04_level1.yml
  - 4.2 Configure Logging - section_04_level2.yml
  - 4.3 Ensure logrotate is configured (Not Scored) - section_04_level3.yml

5. Access, Authentication and Authorization
  - 5.1 Configure cron - section_05_level1.yml
  - 5.2 SSH Server configuration - section_05_level2.yml
  - 5.3 Configure PAM - section_05_level3.yml
  - 5.4 User Accounts and Environment - section_05_level4.yml
  - 5.5 Ensure root login is restricted to system console (Not Scored) - section_05_level4.yml
  - 5.6 Ensure access to the su command is restricted (Scored) - section_05_level5.yml

6. System Maintenance
  - 6.1 System File Permissions - section_06_level1.yml
  - 6.2 User and Group Settings - section_06_level2.yml

## Playbook Default Variable Configs
The default variables assigned to this playbook have been set within `defaults/main.yml`

## Playbook Custom Variable Configs
Custom variables assigned to this playbook have bee set within `vars/main.yml`. Please note that these custom variables overrided default vars.

## Playbook Scripts
This playbook contains a number of scripts defined under `scripts/` executed per section needed. Please note that these scripts have been built based on the recommendations found within the CIS Ubuntu Linux 16.04 LTS Benchmark.

## Vagrant Testing
This playbook contains a vagrant test template file `Vagranfile` for running tests against a test box. The file is located at the root of this role.


