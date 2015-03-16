require 'animal/entity/animal_entity'

module AnimalLibrary
  module Repository
    class AnimalRepository

      def create(params)
        record = Animal.create(params)
        animal = transform(record)
      end

      def find_all_animals
        Animal.all.map { |animal|
          transform(animal)
        }
      end

      def transform(record)
        Entity::AnimalEntity.new(
          id: record.id,
          name: record.name
        )
      end

    end
  end
end
