FROM ubuntu:20.04
RUN apt-get update && apt-get install -y git && apt-get clean

WORKDIR /app

COPY . .

# Run the app
CMD ["echo","You are in the container"]