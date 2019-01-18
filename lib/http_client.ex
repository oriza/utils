defmodule Utils.HttpClient do
  @moduledoc """
    HTTPoison abstraction
  """
  def get(url) do
    case HTTPoison.get(url, [], [ssl: [{:versions, [:'tlsv1.2']}]]) do 
      {:ok, %HTTPoison.Response{status_code: status, body: body}} -> {:ok, status, body}
      {:error, %HTTPoison.Error{reason: reason}} -> {:error, reason}
    end
  end
end
