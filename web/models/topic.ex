defmodule Discuss.Topic do
  use Discuss.Web, :model

  # Define the schema in db so phoenix knows how to handle stuff
  schema "topics" do
    field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end