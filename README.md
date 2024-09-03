<p align="center">
    <img alt="Ansible Role" src="https://img.shields.io/ansible/role/d/slashsbin/mega_update">
    <img alt="GitHub Actions Workflow Status" src="https://img.shields.io/github/actions/workflow/status/slashsbin/mega_update/ansible-lint.yml">
</p>

Mega Update
===========

One Ansible role to update them all.

Supports
--------
- [X] **APT**: Update all Debian packages to the latest version.
      Tags: `apt`, `cleanup`
- [X] **Composer**: Update [Composer](https://getcomposer.org/) executable and globally installed packages.
      Tags: `composer`
- [X] **Docker**: Pull latest version of [Docker](https://www.docker.com/) images from repositories.
      Tags: `docker`, `cleanup`
- [X] **Flatpak**: Update all system-wide installed [flatpaks](https://www.flatpak.org/), including applications and runtimes.
      Tags: `flatpak`
- [X] **Homebrew**: Upgrade outdated [brews](https://brew.sh/) and casks.
      Tags: `homebrew`, `cleanup`
- [X] **macOS**: Update MacOS apps via the official system software update tool cli.
      Tags: `osx`
- [X] **NPM**: Upgrade globally installed [npm](https://nodejs.org/) packages.
      Tags: `npm`
- [X] **Phive**: Update [Phive](https://phar.io/) executable and installed phars.
      Tags: `phive`
- [X] **Rust**: Update [Rust](https://www.rust-lang.org/) toolchains, rustup and globally installed cargo packages.
      Tags: `rust`
- [X] **Snaps**: Referesh all installed [Snaps](https://snapcraft.io/).
      Tags: `snap`

Requirements
------------

List of used Ansible modules:

- `ansible.builtin.apt`
- `ansible.builtin.command`
- `ansible.builtin.debug`
- `ansible.builtin.set_fact`
- `ansible.builtin.stat`
- `community.docker.docker_host_info`
- `community.docker.docker_image_info`
- `community.docker.docker_image`
- `community.general.cargo`
- `community.general.composer`
- `community.general.homebrew_cask`
- `community.general.homebrew`
- `community.general.npm`

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

### Run Mega Update, updating everything supported

Clone the project and execute:

```bash
ansible-playbook --inventory tests/inventory --ask-become-pass tests/test.yml
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
ansible-playbook --inventory tests/inventory --ask-become-pass tests/test.yml --tags apt
```

### Update APT packages only, without running cleanup tasks

```bash
ansible-playbook --inventory tests/inventory --ask-become-pass tests/test.yml --tags apt --skip-tags cleanup
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
