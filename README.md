# Elixir FizzBuzz

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

## Avaliable routes

- http://localhost:4000/api/fizzbuzz - which return numbers that can be divided by 3 and 5
- http://localhost:4000/api/fizz - that return numbers that can be divided by 3
- http://localhost:4000/api/buzz - that return numbers that can be divided by 5
- http://localhost:4000/api/other - which return numbers that can't be divided by 3 or 5

## Information

The routes were defined with the GET type, to facilitate the visualization

The routes definitions are in ``./lib/elixirfizzbuzz_web/router``

The controllers files are in ``./lib/elixirfizzbuzz_web/controllers``
