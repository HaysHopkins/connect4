defmodule Connect4Web.HelloController do
  use Connect4Web, :controller

  def hello(conn, _params) do
    render conn, "hello.json", message: "Hello, World!"
  end
end
