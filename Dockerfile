FROM golang:1.20.4-bullseye
RUN apt update && apt install --no-install-recommends gdal-bin libgeos-dev libleveldb-dev postgresql-client -y && apt clean && rm -rf /var/lib/apt/lists/*
RUN go install github.com/omniscale/imposm3/cmd/imposm@53bb807

CMD ["sh"]
