# Cadabra2-dockerfile

## Usage

1. build image

```zsh
docker build -t cadabra-new .
```

2. for gtk, get ip address

example: for mac
```zsh
 ipconfig getifaddr en0
```

tell xhost to allow connections from that ip address
```zsh
xhost + <YOUR_IP_ADDRESS>
```

3. run container

```zsh
docker run -e DISPLAY=<YOUR_IP_ADDRESS>:0 -v /tmp/.X11-unix:/tmp/.X11-unix --name cadabra-new cadabra-image cadabra2-gtk
```
