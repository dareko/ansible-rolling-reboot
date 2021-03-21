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

    # number of seconds to wait before next server reboot
    rolling_reboot_pause: 60
    
    # by default wait for ssh daemon after reboot
    # listen to a service port that is meaningful in your environment
    # thus allowing you to reduce the value for rolling_reboot_pause
    rolling_reboot_wait_port: 22

    # number of seconds to wait before polling port
    # in some environments that can be set rather low (10 seconds or less)
    rolling_reboot_wait_delay: 60

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

        ansible-playbook -i hosts rolling_reboot.yml -e 'rolling_reboot_group=<your group> \
                                                         rolling_reboot_wait_port=8087 \
                                                         rolling_reboot_wait_delay=10 \
                                                         rolling_reboot_pause=10 '

License
-------

[MIT License](http://choosealicense.com/licenses/mit/)

Author Information
------------------

[Darek Owczarek](https://galaxy.ansibleworks.com/list#/users/1102)
