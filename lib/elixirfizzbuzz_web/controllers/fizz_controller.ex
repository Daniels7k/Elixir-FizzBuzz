defmodule ElixirfizzbuzzWeb.FizzController do
  use ElixirfizzbuzzWeb, :controller

  alias ElixirfizzbuzzWeb.FizzBuzzCatcher

  def index(conn, _params) do
    conn
    |> json(%{fizz: FizzBuzzCatcher.index("fizz")})
  end
end
