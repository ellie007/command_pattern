module Owners
  module Context
    class FindAllOwners

      def initialize(owner_repository)
        @owner_repository = owner_repository
      end

      def execute
        @owner_repository.find_all_owners
      end

    end
  end
end
