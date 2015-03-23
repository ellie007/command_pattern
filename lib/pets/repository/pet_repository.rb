require 'pets/entity/pet_entity'

module Pets
  module Repository
    class PetRepository

      def initialize(db_driver)
        @db_driver = db_driver
      end

      def create(params)
        record = db_driver.create(params)
        transform(record)
      end

      def find_all_pets
        db_driver.all.map { |pet|
          transform(pet)
        }
      end

      def find_by_name(name)
        matches_of_names = db_driver.where(name: name)
        matches_of_names.map { |pet| transform(pet) }
      end

      def transform(record)
        Entity::PetEntity.new(
          id: record.id,
          name: record.name
        )
      end

      private

      attr_reader :db_driver

    end
  end
end
