FROM docker.io/cortexproject/cortex:v1.16.0@sha256:7b317a938db5d9f4f015248f1c119ec9061309b249cb02010a42dd3ad1ffc4f7
#RUN wget -O /opt/config.yaml https://cortexmetrics.io/docs/configuration/single-process-config-blocks-local.yaml

COPY config.yaml /opt/config.yaml


ENTRYPOINT [ "/bin/cortex", "--config.file=/opt/config.yaml", "-config.expand-env"]
