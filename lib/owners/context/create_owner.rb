module Owners
  module Context
    class CreateOwner

      def initialize(owner_repository)
        @owner_repository = owner_repository
      end

      def execute(params)
        @owner_repository.create(params)
      end

    end
  end
end
