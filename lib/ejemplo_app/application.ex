defmodule EjemploApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {EjemploApp.Hola, :ok},
      {Plug.Cowboy, scheme: :http, plug: EjemploApp.Endpoint, options: [port: 80]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EjemploApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
