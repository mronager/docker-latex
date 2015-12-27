FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get clean && \
    apt-get update && \
    apt-get install -y \
      texlive-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]
WORKDIR "/data"
ENTRYPOINT ["pdflatex"]