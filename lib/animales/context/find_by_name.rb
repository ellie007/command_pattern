module Animales
  module Context
    class FindByName

      def initialize(animal_repository)
        @animal_repository = animal_repository
      end

      def execute(params)
        @animal_repository.find_by_name(params)
      end

    end
  end
end
