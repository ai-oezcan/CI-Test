FROM python:3.10-bullseye

# install necessary linux packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    protobuf-compiler \
    curl

WORKDIR /workdir

# Copy the app
COPY app /workdir/app

ENTRYPOINT ["python", "-m", "app.main"]
