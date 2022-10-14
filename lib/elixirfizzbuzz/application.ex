defmodule Elixirfizzbuzz.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ElixirfizzbuzzWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Elixirfizzbuzz.PubSub},
      # Start the Endpoint (http/https)
      ElixirfizzbuzzWeb.Endpoint
      # Start a worker by calling: Elixirfizzbuzz.Worker.start_link(arg)
      # {Elixirfizzbuzz.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Elixirfizzbuzz.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirfizzbuzzWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
