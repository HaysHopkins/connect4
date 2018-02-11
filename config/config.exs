# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :connect4,
  ecto_repos: [Connect4.Repo]

# Configures the endpoint
config :connect4, Connect4Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "33zABClBgK9f/tViu7HLKOcZBFcwmeyKAUDxPU5GmkgyWtrD2OT7z3MVAIrkCOTp",
  render_errors: [view: Connect4Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Connect4.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
