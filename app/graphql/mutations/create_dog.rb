class Mutations::CreateDog < Mutations::BaseMutation
  argument :name, String, required: true

  field :dog, Types::DogType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    dog = Dog.new(name: name)
    if dog.save
      {
        dog: dog,
        errors: []
      }
    else
      {
        dog: nil,
        errors: dog.errors.full_messages
      }
    end
  end


end