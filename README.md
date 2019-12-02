![Drone Git Sync Icon](https://github.com/VitoVan/drone-git-sync/raw/master/iconfile.png)

# drone-git-sync

This [Drone](https://drone.io/) plugin allows you to keep two Git repositories in sync

> Currently, only Git over SSH is supported. PR are welcome.

## Usage

```yaml
steps:
  - name: sync
    image: vitovan/drone-git-sync:latest
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

> Make sure your key does not need a password, otherwise see below

## How to use this without Drone

```bash
docker run -it --rm \
       -e=PLUGIN_SSH_KEY=`cat ~/.ssh/id_rsa | base64` \
       -e=PLUGIN_REPO_FROM=git@github.com:vitovan/drone-git-sync.git \
       -e=PLUGIN_REPO_TO=git@gitlab.com:vitovan/drone-git-sync.git \
       vitovan/drone-git-sync:latest
```

> This will prompt you to enter your password, if you have one


### Credits

- Icon made by [smalllikeart](https://www.flaticon.com/authors/smalllikeart) from www.flaticon.com
