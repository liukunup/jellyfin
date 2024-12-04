#! /bin/bash
# author : Liu Kun
# date   : 2024-12-04 23:47:00

docker run -d \
  --volume /path/to/config:/config \
  --volume /path/to/cache:/cache \
  --volume /path/to/certs:/certs \
  --volume /path/to/fonts:/usr/local/share/fonts/custom \
  --mount type=bind,source=/path/to/media1,target=/media1 \
  --mount type=bind,source=/path/to/media2,target=/media2,readonly \
  --envrionment JELLYFIN_PublishedServerUrl=http://jellyfin.homelab.lan \
  --name=jellyfin \
  --restart=unless-stopped \
  --user uid:gid \
  --net=host \
  docker.io/liukunup/jellyfin:10.10.3
