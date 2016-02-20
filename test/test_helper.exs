ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Jobex.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Jobex.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Jobex.Repo)

