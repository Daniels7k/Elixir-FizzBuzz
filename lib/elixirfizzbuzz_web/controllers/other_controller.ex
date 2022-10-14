defmodule ElixirfizzbuzzWeb.OtherController do
  use ElixirfizzbuzzWeb, :controller

  def index(conn, _params) do
    otherCatcher = fn n ->
      rem(n, 3) != 0 && rem(n, 5) != 0
    end

    conn
    |> json(%{other: Enum.filter(1..100, otherCatcher)})
  end
end
