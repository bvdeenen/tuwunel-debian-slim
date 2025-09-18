FROM linuxcontainers/debian-slim:latest
WORKDIR /
RUN apt update -y && apt install -y curl binutils
RUN curl -L https://github.com/matrix-construct/tuwunel/releases/download/v1.4.2/v1.4.2-release-all-x86_64-v1-linux-gnu-tuwunel.deb \
-o tuwunel.deb
RUN ar p tuwunel.deb data.tar.gz | tar xz
CMD ["tuwunel"]
