FROM node:14.15.4-slim

ARG USERNAME=nodeapp
ARG USER_UID=1001
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
USER $USERNAME

WORKDIR /home/node/app

CMD [ "sh", "-c", "npm i && tail -f /dev/null" ]

