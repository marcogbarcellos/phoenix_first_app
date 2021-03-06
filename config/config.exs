# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :first_app,
  ecto_repos: [FirstApp.Repo]

# Configures the endpoint
config :first_app, FirstAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VIhHuVtYhadv23Z7e4TjuwsXdeOdHbzYBHblPED3It2P0YHapwWhvnsdZr8jTIOs",
  render_errors: [view: FirstAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FirstApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
