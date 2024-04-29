<p align="center">
    <img alt="GitHub Actions Workflow Status" src="https://img.shields.io/github/actions/workflow/status/slashsbin/mega_update/ansible-lint.yml">
    <img alt="Ansible Role" src="https://img.shields.io/ansible/role/d/slashsbin/mega_update">
</p>

Mega Update
===========

One Ansible role to update them all.

Supports
--------
- [X] **APT**: Debian Package Manager
- [ ] **ClamAV**
- [X] **Composer**: itself and global composer packages
- [X] **Docker**: Pull all local images
- [ ] **Exercism CLI**
- [ ] **Go**
- [X] **Homebrew**: itself, brewed bundles and casks
- [X] **NPM**: itself, and global npm packages
- [X] **OSX app updates**: via MacOS official system software update tool cli
- [ ] **RKHunter**
- [ ] **Rust**: Rust toolchain and globally installed cargo packages.
- [ ] **Snaps**: Referesh all installed Snaps
- [ ] **Symfony CLI**

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

Install
-------

```bash
ansible-galaxy role install slashsbin.mega_update
```

Example Playbook
----------------

An example how to include this role:

```yaml
- hosts: your-servers
  roles:
     - { role: slashsbin.mega_update }
```

Local Usage
-----------

Clone the project and execute:

```bash
make run
```

Tests
-----

Run Ansible syntax check and lint:

```bash
make lint
```

License
-------

The Code is licensed under the [MIT License](https://slashsbin.mit-license.org/).

Author Information
------------------

This role was created by [Mohammad Shokri Khanghah](https://slashsbin.dev/).
