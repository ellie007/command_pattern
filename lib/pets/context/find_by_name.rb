module Pets
  module Context
    class FindByName

      def initialize(pet_repository)
        @pet_repository = pet_repository
      end

      def execute(params)
        @pet_repository.find_by_name(params)
      end

    end
  end
end
