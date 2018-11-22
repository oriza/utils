defmodule Utils.HtmlParser do
  @moduledoc """
    Abstraction over Meeseeks
  """

  import Meeseeks.CSS

  def parse(html), do: Meeseeks.parse(html)

  def select_all(document, selector), do: Meeseeks.all(document, css(selector))

  def select_one(document, selector), do: Meeseeks.one(document, css(selector))

  def get_text(element), do: Meeseeks.text(element)

  def get_attribute(element, attribute), do: Meeseeks.attr(element, attribute)
end
