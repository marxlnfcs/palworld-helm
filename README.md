# Helm - Palworld - Dedicated Server
Helm chart for running a Palworld Dedicated Server in Kubernetes

## Prerequisites
* Kubernetes 1.10+
* Helm 3.0.0+

## Adding Helm Chart

```bash
$ helm repo add marxlnfcs https://marxlnfcs.github.io/charts
$ helm repo update
$ helm install palworld marxlnfcs/palworld
```

## ToDo's
```
- Implement backup functionality
```

## Known bugs / Unsolved issues
```
------------------------------------
- The Palworld Server probably won't work with the NGINX proxy enabled. Has to be analysed
-------------------------------------
```

## Credits
Docker versions of 7DTD are pulled from:
* https://github.com/marxlnfcs/docker-palworld-dedicated-server
* https://hub.docker.com/r/marxlnfcs/palworld-dedicated-server


## License

[GPL-3.0 License](/LICENSE.md)