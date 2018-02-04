defmodule PhxReactExampleAppWeb.HelloController do
  use PhxReactExampleAppWeb, :controller

  def hello(conn, _params) do
    render conn, "hello.json", message: "Hello, World!"
  end
end
