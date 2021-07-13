#Stage 1 - Install dependencies and build the app
FROM debian:latest AS build-env
WORKDIR /app/

# Install flutter dependencies
RUN apt-get update
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3
RUN apt-get clean

# Clone the flutter repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Set flutter path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Run flutter doctor
RUN flutter doctor -v
# Enable flutter web
RUN flutter channel master
RUN flutter upgrade
RUN flutter config --enable-web

# Copy files to container and build
COPY . /app/
RUN flutter build web

FROM nginx:1.19.6-alpine
COPY --from=build-env /app/build/web /etc/nginx/html
COPY configs/nginx/nginx.conf /etc/nginx/conf.d/default.conf
