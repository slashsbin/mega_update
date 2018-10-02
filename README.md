# [WIP] This is a work-in-progress ansible-role, do NOT use in production yet.

---

Mega-Update
===========

Probe and update all packages, development tools and dependencies.

Requirements
------------

TODO: Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

TODO: A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

None.

Example Playbook
----------------

Add mega-update role to your playbook:

```yaml
- hosts: your-servers
  roles:
     - { role: slashsbin.mega-update }
```

Tests
-----

Run Tests:

```bash
ansible-playbook -i tests/inventory tests/test.yml --check
```

License
-------

The Code is licensed under the [MIT License](https://slashsbin.mit-license.org/).

## Author Information

This role was created in 2018 by [Mohammad Shokri Khanghah](https://slashsbin.com/).
