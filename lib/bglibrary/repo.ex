defmodule Bglibrary.Repo do
  use Ecto.Repo,
    otp_app: :bglibrary,
    adapter: Ecto.Adapters.Postgres
end
