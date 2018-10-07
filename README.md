Mega-Update
===========

Probe and update all packages, development tools and dependencies. Currently supports:

- **Composer** itself and global composer packages
- *Homebrew** itself, brewed bundles and casks
- **NPM** itself, and global npm packages
- **OSX app updates** via MacOS official system software update tool cli

Requirements
------------

List of used Ansible modules:

- composer
- homebrew
- homebrew_cask
- npm

Role Variables
--------------

None.

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
