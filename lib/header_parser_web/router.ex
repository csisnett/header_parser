defmodule HeaderParserWeb.Router do
  use HeaderParserWeb, :router

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

  scope "/", HeaderParserWeb do
    pipe_through :browser

    get "/", PageController, :index

  end

  scope "/api/whoami", HeaderParserWeb do
    pipe_through :api

    get "/", HeaderController, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", HeaderParserWeb do
  #   pipe_through :api
  # end
end
