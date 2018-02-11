defmodule Connect4Web.HelloView do
  use Connect4Web, :view

  def render("hello.json", %{message: message}) do
    %{data: message}
  end
end
