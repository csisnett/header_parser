defmodule HeaderParser.Repo do
  use Ecto.Repo,
    otp_app: :header_parser,
    adapter: Ecto.Adapters.Postgres
end
