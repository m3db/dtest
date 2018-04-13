FROM busybox:musl

ADD out/m3em_agent-config.yaml m3em.agent.yaml
ADD bin/m3em_agent m3em_agent

RUN `mkdir /var/m3em-agent`

ENTRYPOINT ["/m3em_agent", "-f", "m3em.agent.yaml"]
