defmodule Blurred.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      BlurredWeb.Telemetry,
      # Start the Ecto repository
      Blurred.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Blurred.PubSub},
      # Start Finch
      {Finch, name: Blurred.Finch},
      # Start the Endpoint (http/https)
      BlurredWeb.Endpoint
      # Start a worker by calling: Blurred.Worker.start_link(arg)
      # {Blurred.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Blurred.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BlurredWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
