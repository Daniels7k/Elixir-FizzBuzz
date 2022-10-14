defmodule ElixirfizzbuzzWeb.BuzzController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    buzzCatcher = fn n ->
      rem(n, 5) == 0
    end

    conn
    |> json(%{buzz: Enum.filter(1..100, buzzCatcher)})
  end
end
