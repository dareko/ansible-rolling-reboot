Rolling Reboot Playbook
========

The [dareko.rolling_reboot](https://galaxy.ansibleworks.com/list#/roles/424) playbook performs servers reboot in rolling manner.

Requirements
------------

This role requires Ansible 1.4 or higher.
Platform requirements are listed in the Supported Platforms section of the role details.

Role Variables
--------------

The variables that can be passed to this role with default values are as follows.

    # number of minutes to wait before next server reboot
    rolling_reboot_pause: 1
    
    # by default wait for ssh daemon after reboot
    rolling_reboot_wait_port: 22

Dependencies
------------

None

Example Playbook
----------------

1. Add a group to the `hosts` inventory file

2. Add dareko.rolling.reboot role to the rolling_reboot.yml playbook

        - hosts: "{{ rolling_reboot_group }}"
          sudo: true
          serial: 1
          roles:
          - role: dareko.rolling_reboot

3. Execute the the playbook

        ansible-playbook -i hosts rolling_reboot.yml -e "rolling_reboot_group=<group_name> rolling_reboot_wait_port=22"

License
-------

[MIT License](http://choosealicense.com/licenses/mit/)

Author Information
------------------

[Darek Owczarek](https://galaxy.ansibleworks.com/list#/users/1102)
