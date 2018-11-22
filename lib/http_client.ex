defmodule Utils.HttpClient do
  @moduledoc """
    HTTPoison abstraction
  """
  def get(url) do
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} -> {:ok, body}
      {:ok, %HTTPoison.Response{status_code: 404}} -> {:error, "Not found: #{url}"}
      {:error, %HTTPoison.Error{reason: reason}} -> {:error, reason}
    end
  end
end
