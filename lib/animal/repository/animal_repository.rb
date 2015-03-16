require 'animal/entity/animal_entity'

module AnimalLibrary
  module Repository
    class AnimalRepository

      def initialize(db_driver)
        @db_driver = db_driver
      end

      def create(params)
        record = db_driver.create(params)
        transform(record)
      end

      def find_all_animals
        db_driver.all.map { |animal|
          transform(animal)
        }
      end

      def transform(record)
        Entity::AnimalEntity.new(
          id: record.id,
          name: record.name
        )
      end

      private

      attr_reader :db_driver

    end
  end
end
