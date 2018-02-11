defmodule PhxReactExampleAppWeb.Router do
  use PhxReactExampleAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxReactExampleAppWeb do
    pipe_through :api

    get "/hello", HelloController, :hello
  end

  scope "/", PhxReactExampleAppWeb do
    pipe_through :browser # Use the default browser stack

    get "/*path", PageController, :index
  end
end
