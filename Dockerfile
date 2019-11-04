FROM debian:latest

#COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENV volumePath=/opt/log mountPath=/opt/oracle/log volumeName=log
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENTRYPOINT ["mount-hostpath"]

ADD mount-hostpath /usr/local/bin/
