FROM ubuntu:16.04

RUN apt update && apt install -y ca-certificates iptables

ADD build/bin/linux/kube2iam /bin/kube2iam

ENTRYPOINT ["kube2iam"]
