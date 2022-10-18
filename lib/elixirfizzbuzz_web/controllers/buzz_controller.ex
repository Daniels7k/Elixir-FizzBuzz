defmodule ElixirfizzbuzzWeb.BuzzController do
  use ElixirfizzbuzzWeb, :controller

  alias ElixirfizzbuzzWeb.FizzBuzzCatcher

  def index(conn, _params) do
    conn
    |> json(%{buzz: FizzBuzzCatcher.index("buzz")})
  end
end
