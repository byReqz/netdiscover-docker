FROM debian:sid

RUN apt-get update
RUN apt-get install -y curl jq netdiscover
RUN curl -s https://api.github.com/repos/yudai/gotty/releases/latest | jq -r '.assets[].browser_download_url' | grep "gotty_linux_amd64.tar.gz" | xargs curl -L -o gotty_linux_amd64.tar.gz
RUN tar xvfz gotty_linux_amd64.tar.gz

COPY run.sh ./run.sh
RUN chmod +x ./run.sh
ENTRYPOINT ["/run.sh"]
