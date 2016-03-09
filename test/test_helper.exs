ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Elixcommerce.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Elixcommerce.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Elixcommerce.Repo)

