module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    description "Root query"
    field :test_field, String, null: false, description: "An example field added by the generator"
    field :dogs, [DogType], null: false, description: "Get all dogs"
    field :dog, DogType, null: true do
      description "Find a specific dog"
      argument :id, ID, required: true
    end

    def test_field
      "Hello World!"
    end

    def dog(id:)
      Dog.find(id)
    end

    def dogs
      Dog.all
    end
  end
end
