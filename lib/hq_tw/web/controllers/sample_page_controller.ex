defmodule HqTw.Web.SamplePageController do
  use HqTw.Web, :controller

  plug :put_layout, false

  def login(conn, _param) do
    render(conn)
  end

  def dashboard(conn, _param) do
    render(conn)
  end

  def client(conn, _param) do
    render(conn)
  end
end
