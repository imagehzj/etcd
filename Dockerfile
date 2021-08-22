FROM ttbb/base

RUN wget https://storage.googleapis.com/etcd/v3.5.0/etcd-v3.5.0-linux-amd64.tar.gz  && \
mkdir -p etcd && \
tar -xf etcd-v3.5.0-linux-amd64.tar.gz -C etcd --strip-components 1 && \
rm -rf etcd-v3.5.0-linux-amd64.tar.gz && \
ln -s /opt/sh/etcd/etcd /usr/bin/etcd && \
ln -s /opt/sh/etcd/etcdctl /usr/bin/etcdctl

WORKDIR /opt/sh/etcd