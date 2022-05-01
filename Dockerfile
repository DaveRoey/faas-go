FROM alpine:latest

###############################################################################
#                                INSTALLATION
###############################################################################

ENV WORKDIR  /app

ADD resource $WORKDIR/resource

ADD manifest $WORKDIR/manifest

ADD main $WORKDIR/main

RUN chmod +x $WORKDIR/main

###############################################################################
#                                   START
###############################################################################
WORKDIR $WORKDIR
CMD ./main
