defmodule BglibraryWeb.PageController do
  use BglibraryWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
