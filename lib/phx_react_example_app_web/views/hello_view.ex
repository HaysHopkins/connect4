defmodule PhxReactExampleAppWeb.HelloView do
  use PhxReactExampleAppWeb, :view

  def render("hello.json", %{message: message}) do
    %{data: message}
  end
end
