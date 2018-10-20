defmodule ChatbotApiWeb.Router do
  use ChatbotApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

   scope "/api/v1", ChatbotApiWeb do
     pipe_through :api

     post "/chatbot/fr", ChatbotfrController, :message
   end
end
