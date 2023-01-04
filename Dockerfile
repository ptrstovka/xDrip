FROM ubuntu:jammy

RUN apt update \
  && apt install -y android-sdk wget \
  && export ANDROID_HOME=/usr/lib/android-sdk \
  && cd /root \
  && wget https://dl.google.com/android/repository/commandlinetools-linux-9123335_latest.zip \
  && unzip commandlinetools-linux-9123335_latest.zip \
  && yes | /root/cmdline-tools/bin/sdkmanager --sdk_root=/usr/lib/android-sdk --licenses
