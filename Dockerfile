FROM docker.io/cortexproject/cortex:v1.16.1@sha256:9b8fda562c8de07f110ccd1136d32353b5aee0979be7047f2db6cb218b8e3a3d
#RUN wget -O /opt/config.yaml https://cortexmetrics.io/docs/configuration/single-process-config-blocks-local.yaml

COPY config.yaml /opt/config.yaml


ENTRYPOINT [ "/bin/cortex", "--config.file=/opt/config.yaml", "-config.expand-env"]
