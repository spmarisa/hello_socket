# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :hello_socket, HelloSocketWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HtGQ5TgDet4VpCI1DT19Zt1P2GaKCmCz/Y22GGNH4aU1Zyee8vvd6Q7OKNJ9KYFC",
  render_errors: [view: HelloSocketWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloSocket.PubSub,
  live_view: [signing_salt: "7tOG8wq0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
