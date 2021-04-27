FROM centos:7
ENV INST=yum
ENV VVV=/usr/local/docker
ENV VER=27.2
ENV FILE=emacs-${VER}.tar.gz
ENV URL0=http://ftp.gnu.org/gnu/emacs
ENV URL=${URL0}/${FILE}


RUN $INST install -y gcc tar make ncurses-devel gnutls-devel
RUN curl -O $URL
RUN (tar zxf ./$FILE; cd emacs-${VER}; \
     ./configure --prefix=${VVV}/emacs --without-x; make install)

ADD startservice.sh /usr/local/startservice.sh

CMD ["/usr/local/startservice.sh"]

