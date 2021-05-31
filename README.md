# netdiscover-docker
this container will expose a netdiscover instance via http
currently supported (optional) arguments are:

- port // specifies the port (def. 8080)
- userpass // sets http basic auth - ex. user:pass (def. none)
- title // sets tab title (def. netdiscover-docker)
- passive // only listen but dont send requests

# note
if you intend on permanently running the container, i would recommend using the passive option, as most consumer switches will fill their arp cache very quickly

# docker compose
```yaml
version: '2.3'

services:
  netdiscover-docker:
    container_name: netdiscover-docker
    network_mode: host
    image: byreqz/netdiscover-docker:latest
    restart: unless-stopped
#    environment:
#     - port=1234
#     - userpass=user:pass
#     - title=1234
#     - passive=true
```

# credits
Netdiscover: https://github.com/netdiscover-scanner/netdiscover <br>
GoTTY: https://github.com/yudai/gotty
