FROM ubuntu:latest
RUN mkdir -p /usr/share/webapps/mypc/configs/django \
  && mkdir -p /usr/local/src/mypc \
  && apt-get update -y \
  && apt-get install tzdata -y \
  && ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime \
  && dpkg-reconfigure -f noninteractive tzdata \
  && apt-get install bash python3 python3-pip python3-venv libpq-dev -y \
  && apt-get clean -y \
  && apt-get autoclean -y
WORKDIR /usr/share/webapps/mypc
ADD configs/django/requirements/ /usr/share/webapps/mypc/configs/django/requirements/
ENV PATH="/var/lib/mypc/python_venv/bin:$PATH"
COPY ./docker/python/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
