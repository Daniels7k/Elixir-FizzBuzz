defmodule ElixirfizzbuzzWeb.FizzBuzzController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    conn
    |> json(%{})
  end
end
