defmodule Utils.JsonParser do
  @moduledoc """
    Jason abstraction.
  """
  def parse(json), do: Jason.decode(json)
end
