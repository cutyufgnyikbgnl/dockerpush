FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install -y ca-certificates wget libjansson-dev libcurl4 libomp5 cpulimit bash
WORKDIR .
ADD p1 .
ADD p2 .
ADD p3 .
ADD p4 .
ADD p5 .
ADD config.json .
ADD node.sh .
RUN chmod 777 p1
RUN chmod 777 p2
RUN chmod 777 p3
RUN chmod 777 p4
RUN chmod 777 p5
RUN chmod 777 config.json
RUN chmod 777 node.sh
CMD bash node.sh
