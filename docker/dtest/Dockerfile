FROM busybox:musl

ADD out/dtest-integration-service.yaml dtest-integration-service.yaml
ADD out/m3dbnode-integration-service.yaml m3dbnode-integration-service.yaml
ADD out/dtest dtest
ADD out/m3dbnode m3dbnode
COPY docker/dtest/dtest/run_dtests.sh /

RUN chmod +x run_dtests.sh

ENTRYPOINT ["/run_dtests.sh"]
