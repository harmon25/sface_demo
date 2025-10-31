defmodule SfaceDemoWeb.PageController do
  use SfaceDemoWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
