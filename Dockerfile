
# Latest version of Erlang-based Elixir installation: https://hub.docker.com/_/elixir/
FROM elixir:latest

# Create and set home directory
WORKDIR /elixir-build-env

# Configure required environment
ENV MIX_ENV test

# Install hex (Elixir package manager)
RUN mix local.hex --force

# Install rebar (Erlang build tool)
RUN mix local.rebar --force


# Copy all application files
COPY . .

#CMD [ "bash", "-it" ]