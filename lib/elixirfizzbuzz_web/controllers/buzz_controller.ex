defmodule ElixirfizzbuzzWeb.BuzzController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    conn
    |> json(%{})
  end
end
