# Latest version of Erlang-based Elixir installation: https://hub.docker.com/_/elixir/
FROM elixir:alpine

LABEL maintainer="Murat Eksi"

# Add bash to the image
RUN apk add --update bash

# Configure required environment
ENV MIX_ENV dev
ENV WORKSPACE /elixir-workspace

# Create and set home directory
RUN mkdir $WORKSPACE
WORKDIR $WORKSPACE

# Install hex (Elixir package manager)
RUN mix local.hex --force

# Install rebar (Erlang build tool)
RUN mix local.rebar --force

# Copy all application files
COPY . $WORKSPACE
