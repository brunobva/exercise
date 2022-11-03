FROM archlinux
LABEL maintener=brunobva git=github.com/brunobva
WORKDIR /bva
RUN pacman -Syu --noconfirm && pacman -S aws-cli git kubectl \
    nmap docker-scan arp-scan gnu-netcat trivy terraform \
    unzip docker-compose code ansible python-pip pyenv zmap mtr \
    --noconfirm
