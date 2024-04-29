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
      Tags: `apt`, `cleanup`
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

- `ansible.builtin.apt`
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

Example Local Usages
--------------------

### Run Mega Update, Updating everything supported

Clone the project and execute:

```bash
ansible-playbook --inventory tests/inventory tests/test.yml --verbose
```

or, simply use the make recipe:

```bash
make run
```

### List all supported tasks and their tags

```bash
make list-tasks
```

### Update APT packages only

```bash
ansible-playbook --inventory tests/inventory tests/test.yml --tags apt --verbose
```

### Update APT packages only, without running cleanup tasks

```bash
ansible-playbook --inventory tests/inventory tests/test.yml --tags apt --skip-tags cleanup --verbose
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
