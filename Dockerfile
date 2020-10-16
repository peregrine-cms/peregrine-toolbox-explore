FROM adoptopenjdk:11-jdk-hotspot

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt -y install git maven nano vim nodejs \ 
    && rm -rf /var/lib/apt/lists/* \
    && sed -i 's|</settings>|<localRepository>/peregrine/.m2/repository</localRepository></settings>|' /etc/maven/settings.xml

RUN mkdir -p /opt/scripts
COPY scripts/* /opt/scripts/
RUN chmod a+x /opt/scripts/*.sh

ENV PATH=/opt/scripts:${PATH}

WORKDIR /peregrine

EXPOSE 8088 

ENTRYPOINT ["bash"]
