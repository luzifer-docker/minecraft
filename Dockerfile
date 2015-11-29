FROM java:7

ENV VERSION 1.8.8
ENV MEMORY 1024

ADD ./start.sh /start.sh
ADD https://s3.amazonaws.com/Minecraft.Download/versions/${VERSION}/minecraft_server.${VERSION}.jar /minecraft_server.jar

VOLUME /data
EXPOSE 25565

WORKDIR /data
ENTRYPOINT ["/start.sh"]
CMD ["--"]
