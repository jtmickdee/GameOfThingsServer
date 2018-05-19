# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gameofthings,
  ecto_repos: [Gameofthings.Repo]

# Configures the endpoint
config :gameofthings, GameofthingsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T6zziQ+NNxZ98USNty+ZU+I5QWCGt/vdr9/fXjGF3mQY1O58DSZFqb/d9F9dwKJu",
  render_errors: [view: GameofthingsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gameofthings.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
