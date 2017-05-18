FROM centos:7
ENV INST=yum
ENV VVV=/usr/local/docker
ENV VER=25.2
ENV FILE=emacs-${VER}.tar.gz
ENV URL0=http://ftp.gnu.org/gnu/emacs
ENV URL=${URL0}/${FILE}


RUN $INST install -y gcc tar make ncurses-devel 
RUN (curl -O $URL; tar zxf ./$FILE; cd emacs-${VER}; \
     ./configure --without-x; sudo make install)

ADD startservice.sh /usr/local/startservice.sh


EXPOSE 22
CMD ["/usr/local/startservice.sh"]

