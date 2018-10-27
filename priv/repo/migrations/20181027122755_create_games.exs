defmodule Bglibrary.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :name, :string
      add :rating, :integer

      timestamps()
    end

    create unique_index(:games, [:name])
  end
end
