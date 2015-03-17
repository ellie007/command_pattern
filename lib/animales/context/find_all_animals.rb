module Animales
  module Context
    class FindAllAnimals

      def initialize(animal_repository)
        @animal_repository = animal_repository
      end

      def execute
        @animal_repository.find_all_animals
      end

    end
  end
end
