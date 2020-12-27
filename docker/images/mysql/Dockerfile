FROM mysql:8.0.21

RUN chown -RL mysql:mysql /var/run/mysqld/ && \
    chown -RL mysql:mysql /var/lib/mysql && \
    chmod 700 /var/run/mysqld && \
    chmod 700 /var/lib/mysql

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Set default Timezone
ARG TZ
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

