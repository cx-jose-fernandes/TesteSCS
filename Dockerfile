FROM rockylinux:8

# Atualiza o sistema e instala libxml2 na versão específica
RUN dnf -y update && \
    dnf -y install \
    https://dl.rockylinux.org/pub/rocky/8/BaseOS/x86_64/os/Packages/l/libxml2-2.9.7-18.el8_10.1.x86_64.rpm && \
    dnf clean all

# Verifica a instalação
RUN rpm -q libxml2

CMD ["/bin/bash"]
