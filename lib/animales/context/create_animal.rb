module Animales
  module Context
    class CreateAnimal

      def initialize(animal_repository)
        @animal_repository = animal_repository
      end

      def execute(params)
        @animal_repository.create(params)
      end

    end
  end
end
