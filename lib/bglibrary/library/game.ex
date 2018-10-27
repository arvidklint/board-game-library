defmodule Bglibrary.Library.Game do
  use Ecto.Schema
  import Ecto.Changeset


  schema "games" do
    field :name, :string
    field :rating, :integer

    timestamps()
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:name, :rating])
    |> validate_required([:name, :rating])
    |> unique_constraint(:name)
    |> validate_inclusion(:rating, 1..5)
  end
end
