# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_react_example_app,
  ecto_repos: [PhxReactExampleApp.Repo]

# Configures the endpoint
config :phx_react_example_app, PhxReactExampleAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "33zABClBgK9f/tViu7HLKOcZBFcwmeyKAUDxPU5GmkgyWtrD2OT7z3MVAIrkCOTp",
  render_errors: [view: PhxReactExampleAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxReactExampleApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
