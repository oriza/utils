defmodule Utils.RssParser do
  @moduledoc """
    ElixirFeedParser abstraction.
  """
  def parse(xml) do
    xml
    |> ElixirFeedParser.parse()
    |> Map.get(:entries, [])
  end
end
