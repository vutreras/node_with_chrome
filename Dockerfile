#para ejecutar test e2e node se necesita la version jessie, no sirve la alpine
FROM node:8.15.0-jessie

RUN apt-get update && apt-get install -qq -y \
    build-essential libpq-dev libffi-dev libnss3 libgconf-2-4 --no-install-recommends

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

ENTRYPOINT ["sh", "-c", "ls"]
