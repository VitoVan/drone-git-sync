# drone-git-sync

This [Drone](https://drone.io/) plugin allows you to keep two Git repositories in sync

> Currently, only Git over SSH is supported. PR are welcome.

## Usage

```yaml
steps:
  - name: sync
    image: vitovan/drone-git-sync
    settings:
      repo_from: git@github.com:vitovan/drone-git-sync.git
      repo_to: git@gitlab.com:vitovan/drone-git-sync.git
      ssh_key:
        from_secret: ssh_key
```

## How to set SSH key

```bash
cat ~/.ssh/id_rsa | base64
```
