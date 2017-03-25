defmodule HqTw.Web.Router do
  use HqTw.Web, :router

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

  scope "/", HqTw.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/samples", HqTw.Web do
    pipe_through :browser

    get "/login", SamplePageController, :login
    get "/dashboard", SamplePageController, :dashboard
    get "/client", SamplePageController, :client
  end
  # Other scopes may use custom stacks.
  # scope "/api", HqTw.Web do
  #   pipe_through :api
  # end
end
