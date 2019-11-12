FROM ubuntu
RUN apt-get update --fix-missing
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git && apt-get install -y iputils-ping
#WORKDIR
RUN mkdir /datos1
WORKDIR /datos1
RUN touch fi.txt
RUN mkdir /datos2
WORKDIR /datos2
RUN touch f2.txt
#COPY
COPY index.html .
COPY app.log /datos
#ADD
ADD /home/usuario/docs docs
ADD f* ./
ADD t.tar ./
#ENV
ENV dir=/data dir1=/ata1
RUN mkdir $dir && mkdir $dir1
#AGR
AGR dir2
RUN mkdir $dir2
#EXPOSE
RUN apt-get install apache2
EXPOSE 80
ADD entrypoint.sh /datos1
#CMD
CMD /datos1/entrypoint.sh
