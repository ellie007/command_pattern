module Pets
  module Context
    class CreatePet

      def initialize(pet_repository)
        @pet_repository = pet_repository
      end

      def execute(params)
        @pet_repository.create(params)
      end

    end
  end
end
