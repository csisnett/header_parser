use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :header_parser, HeaderParserWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :header_parser, HeaderParser.Repo,
  username: "postgres",
  password: "postgres",
  database: "header_parser_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
