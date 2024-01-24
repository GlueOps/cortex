FROM docker.io/cortexproject/cortex:v1.16.0
#RUN wget -O /opt/config.yaml https://cortexmetrics.io/docs/configuration/single-process-config-blocks-local.yaml

COPY config.yaml /opt/config.yaml


ENTRYPOINT [ "/bin/cortex", "--config.file=/opt/config.yaml"]