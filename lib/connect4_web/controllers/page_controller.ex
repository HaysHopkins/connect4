defmodule PhxReactExampleAppWeb.PageController do
  use PhxReactExampleAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
