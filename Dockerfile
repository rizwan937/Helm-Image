FROM ubuntu:18.04
MAINTAINER Rizwan Javed "rizwan.javed@usepace.com"
ENV SHELL /bin/bash
RUN rm /bin/sh && ln -sf /bin/bash /bin/sh
RUN source ~/.profile
RUN export GPG_TTY=$(tty)
RUN apt-get update
RUN apt --assume-yes install git
RUN apt-get --assume-yes install curl
RUN curl -L https://git.io/get_helm.sh | bash
WORKDIR /apps
ENTRYPOINT tail -f /dev/null
CMD [ "/bin/bash" ]
