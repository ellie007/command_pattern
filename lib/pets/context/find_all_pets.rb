module Pets
  module Context
    class FindAllPets

      def initialize(pet_repository)
        @pet_repository = pet_repository
      end

      def execute
        @pet_repository.find_all_pets
      end

    end
  end
end
