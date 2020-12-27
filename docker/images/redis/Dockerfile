FROM redis:latest

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

#RUN echo "vm.overcommit_memory=1" >> /etc/sysctl.conf
#RUN sysctl vm.overcommit_memory=1

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
