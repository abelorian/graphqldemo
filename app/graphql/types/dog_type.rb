module Types
  class DogType < Types::BaseObject
    description "Perros"
    field :id, ID, null: false
    field :name, String, null: true
    field :age, Int, null: true

    def age
      5
    end
  end
end
