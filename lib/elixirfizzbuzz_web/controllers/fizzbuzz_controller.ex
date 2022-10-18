defmodule ElixirfizzbuzzWeb.FizzBuzzController do
  use ElixirfizzbuzzWeb, :controller

  alias ElixirfizzbuzzWeb.FizzBuzzCatcher

  def index(conn, _params) do
    conn
    |> json(%{fizzbuzz: FizzBuzzCatcher.index("fizzbuzz")})
  end
end
