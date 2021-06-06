# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :course_platform,
  ecto_repos: [CoursePlatform.Repo]

# Configures the endpoint
config :course_platform, CoursePlatformWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H3xzVxA8BL/B6sM4v0nfLke5U7988eSNix4a9GQEGNyK1HuH05Ed1N6tEShBKR/4",
  render_errors: [view: CoursePlatformWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CoursePlatform.PubSub,
  live_view: [signing_salt: "UT4YqTLs"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
