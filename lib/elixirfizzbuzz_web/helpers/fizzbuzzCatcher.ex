defmodule ElixirfizzbuzzWeb.FizzBuzzCatcher do
  def index(operation) do
    cond do
      operation == "fizz" ->
        fizzCatcher = fn n ->
          rem(n, 3) == 0
        end

        Enum.filter(1..100, fizzCatcher)

      operation == "buzz" ->
        buzzCatcher = fn n ->
          rem(n, 5) == 0
        end

        Enum.filter(1..100, buzzCatcher)

      operation == "fizzbuzz" ->
        fizzbuzzCatcher = fn n ->
          rem(n, 3) == 0 && rem(n, 5) == 0
        end

        Enum.filter(1..100, fizzbuzzCatcher)

      operation == "other" ->
        otherCatcher = fn n ->
          rem(n, 3) != 0 && rem(n, 5) != 0
        end

        Enum.filter(1..100, otherCatcher)
    end
  end
end
