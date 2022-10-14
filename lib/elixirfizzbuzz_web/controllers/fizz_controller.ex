defmodule ElixirfizzbuzzWeb.FizzController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    fizzCatcher = fn n ->
      rem(n, 3) == 0
    end

    conn
    |> json(%{fizz: Enum.filter(1..100, fizzCatcher)})
  end
end
