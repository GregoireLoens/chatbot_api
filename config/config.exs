# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chatbot_api, ChatbotApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HHGdt1ELGBsIglTO35U43oGCu08MnHZqbtMT5jWHaIky+LFL03dS15xx9TnMjscm",
  render_errors: [view: ChatbotApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChatbotApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :goth,
       json: "config/viny-526fe-618c808d2b34.json" |> File.read!