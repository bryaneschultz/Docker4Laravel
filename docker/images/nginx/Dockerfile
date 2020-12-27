FROM nginx:latest

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get install apt-transport-https tzdata

RUN apt-get update && apt-get upgrade -y

# Clear cache
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/* \
           /usr/share/doc/*

# Set default Timezone
ARG TZ
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

RUN dpkg-reconfigure tzdata
