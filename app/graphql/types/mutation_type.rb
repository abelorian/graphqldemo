module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    field :create_dog, mutation: Mutations::CreateDog
    def test_field
      "Hello World"
    end
  end
end
