use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixcommerce, Elixcommerce.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elixcommerce, Elixcommerce.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elixcommerce_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :hound,
  driver: "chrome_driver",
  app_host: "http://localhost",
  app_port: "4001"
