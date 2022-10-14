defmodule ElixirfizzbuzzWeb.FizzBuzzController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    fizzbuzz = fn
      0, 0, _ -> "FizzBuzz"
      0, _, _ -> "Fizz"
      _, 0, _ -> "Buzz"
      _, _, n -> n
    end

    fizzbuzzCatcher = fn n ->
      fizzbuzz.(rem(n, 3), rem(n, 5), n)
    end

    conn
    |> json(%{fizzbuzz: Enum.map(1..100, fizzbuzzCatcher)})
  end
end
