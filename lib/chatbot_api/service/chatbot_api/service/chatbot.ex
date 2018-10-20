defmodule ChatbotApi.Service.Chatbot do

  def send_message_fr(message) do
    Vodka.start()
    {:ok, token} = Vodka.generate_access_token()
    {:ok, response} = Vodka.Query.send_query(token, message, "fr")
    {:ok, response["queryResult"]["fulfillmentText"]}
  end

end
