defmodule ChatbotApiWeb.ChatbotfrController do
  use ChatbotApiWeb, :controller

  alias ChatbotApi.Service.Chatbot

  def message(conn, %{"message" => message}) do
    case Chatbot.send_message_fr(message) do
      {:ok, message} ->
        conn
        |> send_resp(200, message)
      {:error, reason, code} ->
        conn
        |> send_resp(code, reason)
      end
    end
end