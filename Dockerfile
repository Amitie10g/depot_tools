FROM python

LABEL maintainer="Amitie10g"
LABEL description="Docker image containing chromium depot_tools"

WORKDIR /opt/depot_tools
ENV PATH "$PATH:/opt/depot_tools"

RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git .
RUN git config --global user.name "John Doe" && \
    git config --global user.email "jdoe@email.com" && \
    git config --global core.autocrlf false && \
    git config --global core.filemode false
RUN gclient

#ENTRYPOINT [ "gclient" ]
