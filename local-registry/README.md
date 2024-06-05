# Setup Local Registry

1. Make sure your Docker Desktop has this configuration in daemon.json or Settings tab:
```
  "insecure-registries": ["local.registry:5001"]
```

2. Start minikube with the `--insecure-registry` flag. First, delete the previous minikube delete so changes get effect. Using minikube start --insecure-registry=["local.registry:5001"]

3. Check the registry was actually included in the list using `docker info` command in minikube ssh

1. Run `make create/standalone` or `make start/standalone`.

2. Make sure the `\etc\hosts` file contain the following entry:

```
local.registry	192.168.68.105
```

3. Input the `local.registry` entry into the minikube's /etc/hosts file:

```
mkdir -p ~/.minikube/files/etc
echo 192.168.68.105x local.registry > ~/.minikube/files/etc/hosts
```

4. Restart minikube, if necessary.

This is the original /etc/hosts minikube
```
127.0.0.1	localhost
::1	localhost ip6-localhost ip6-loopback
fe00::0	ip6-localnet
ff00::0	ip6-mcastprefix
ff02::1	ip6-allnodes
ff02::2	ip6-allrouters
192.168.49.2	minikube
192.168.65.254	host.minikube.internal
192.168.49.2	control-plane.minikube.internal
```
