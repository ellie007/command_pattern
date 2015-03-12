module Animal
module Animal
  module Repository
    class AnimalRepository

      def create(params)
        record = Animal.create(params)
        animal = transform(record)
        animal.save
      end

      def transform(record)
        AnimalEntity.new(record.attributes)
      end

    end
  end
end
