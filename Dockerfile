FROM gcc:latest
COPY . /usr/src/poc
WORKDIR /usr/src/poc
RUN make
CMD ["./main.out"]
