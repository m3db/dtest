FROM busybox:musl

ADD out/m3em_agent-integration-service.yaml m3em.agent.yaml
ADD out/m3em_agent m3em_agent

RUN `mkdir /var/m3em-agent`

ENTRYPOINT ["/m3em_agent", "-f", "m3em.agent.yaml"]
