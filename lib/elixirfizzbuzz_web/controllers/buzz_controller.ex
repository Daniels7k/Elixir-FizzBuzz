defmodule ElixirfizzbuzzWeb.BuzzController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    buzz = fn
      0, _ -> "Buzz"
      _, n -> n
    end

    buzzCatcher = fn n ->
      buzz.(rem(n, 5), n)
    end

    conn
    |> json(%{buzz: Enum.filter(1..100, buzzCatcher)})
  end
end
