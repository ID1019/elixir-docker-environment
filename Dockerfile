
# Latest version of Erlang-based Elixir installation: https://hub.docker.com/_/elixir/
FROM elixir:alpine

# Create and set home directory
RUN mkdir /ead
WORKDIR /ead

# Configure required environment
ENV MIX_ENV test


# Add bash to the image
RUN apk update
RUN apk upgrade
RUN apk add bash

# Install hex (Elixir package manager)
RUN mix local.hex --force

# Install rebar (Erlang build tool)
RUN mix local.rebar --force


# Copy all application files
COPY . .

