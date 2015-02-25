FROM jdauphant/moviepy:python-2.7
MAINTAINER Julien DAUPHANT

RUN pip install pymongo
RUN pip install rethinkdb==1.12.0.post2
RUN pip install boto

COPY migrate.py /opt/migration-rethinkdb-to-mongodb

CMD /opt/migration-rethinkdb-to-mongodb/migrate.py