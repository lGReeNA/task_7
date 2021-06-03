FROM ubuntu:18.04
COPY tar.gz /
RUN tar -xvf tar.gz \
 && apt update \
 && apt install -y g++ \
 && apt install -y gcc \
 && echo "Text before editing:" \
 && cat text.txt \
 && bash task.sh 1 4 \
 && echo "Text after editing:" \
 && cat text.txt \
 && rm tar.gz

