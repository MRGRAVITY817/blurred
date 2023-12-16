defmodule Blurred.Repo do
  use Ecto.Repo,
    otp_app: :blurred,
    adapter: Ecto.Adapters.Postgres
end
