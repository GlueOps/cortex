FROM docker.io/cortexproject/cortex:v1.18.1@sha256:b2c37512c56294f6f648eabd9833adbbfd37b453aaae4390b7f5334bc57f136e
#RUN wget -O /opt/config.yaml https://cortexmetrics.io/docs/configuration/single-process-config-blocks-local.yaml

COPY config.yaml /opt/config.yaml


ENTRYPOINT [ "/bin/cortex", "--config.file=/opt/config.yaml", "-config.expand-env"]
