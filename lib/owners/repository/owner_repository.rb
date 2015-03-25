require 'owners/entity/owner_entity'

module Owners
  module Repository
    class OwnerRepository
      def initialize(db_driver)
        @db_driver = db_driver
      end

      def create(params)
        record = db_driver.create(params)
        transform(record)
      end

      def find_all_owners
        db_driver.all.map { |owner|
          transform(owner)
        }
      end

      def transform(record)
        Entity::OwnerEntity.new(
          id: record.id,
          name: record.name
        )
      end

      private

      attr_reader :db_driver

    end
  end
end
