# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :header_parser,
  ecto_repos: [HeaderParser.Repo]

# Configures the endpoint
config :header_parser, HeaderParserWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "44ztzre0pmULK03/Xr17/lyVr8DPmLlK6AA5n0/OntvmuQDZA0nJfLVM+nyOO1JX",
  render_errors: [view: HeaderParserWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HeaderParser.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
