FROM python:3-alpine

ENV ROOTFOLDER /etesync
ENV admin admin
ENV pass pass
ENV email email@email.com

WORKDIR ${ROOTFOLDER}

RUN apk --update add \
    git bash

RUN git clone https://github.com/etesync/server-skeleton.git
WORKDIR ${ROOTFOLDER}/server-skeleton
RUN pip install -r requirements.txt

COPY dogtail.sh ${ROOTFOLDER}/server-skeleton

RUN chmod +x ${ROOTFOLDER}/server-skeleton/dogtail.sh

VOLUME /etc/etesync-server

EXPOSE 8008

RUN ./manage.py migrate

ENTRYPOINT ["sh","/etesync/server-skeleton/dogtail.sh"]