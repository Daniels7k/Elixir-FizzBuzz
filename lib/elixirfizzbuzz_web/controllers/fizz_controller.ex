defmodule ElixirfizzbuzzWeb.FizzController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    fizz = fn
      0, _ -> "Fizz"
      _, n -> n
    end

    fizzCatcher = fn n ->
      fizz.(rem(n, 3), n)
    end

    conn
    |> json(%{fizz: Enum.map(1..100, fizzCatcher)})
  end
end
