FROM docker.io/cortexproject/cortex:v1.17.1@sha256:4511420c726bce87deaade9e532a98b840e4561dddbc2903c0742b3f7d737ce5
#RUN wget -O /opt/config.yaml https://cortexmetrics.io/docs/configuration/single-process-config-blocks-local.yaml

COPY config.yaml /opt/config.yaml


ENTRYPOINT [ "/bin/cortex", "--config.file=/opt/config.yaml", "-config.expand-env"]
