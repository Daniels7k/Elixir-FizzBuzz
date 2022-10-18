defmodule ElixirfizzbuzzWeb.OtherController do
  use ElixirfizzbuzzWeb, :controller

  alias ElixirfizzbuzzWeb.FizzBuzzCatcher

  def index(conn, _params) do
    conn
    |> json(%{other: FizzBuzzCatcher.index("other")})
  end
end
