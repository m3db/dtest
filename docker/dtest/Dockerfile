FROM busybox:musl

ADD out/dtest-config.yaml dtest-integration-service.yaml
ADD out/m3dbnode-config.yaml m3dbnode-integration-service.yaml
ADD bin/dtest dtest
ADD bin/m3dbnode m3dbnode
COPY docker/dtest/run_dtests.sh /

RUN chmod +x run_dtests.sh

ENTRYPOINT ["/run_dtests.sh"]
