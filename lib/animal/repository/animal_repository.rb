module Animal
module Animal
  module Repository
    class AnimalRepository

      def create(params)
        record = user.create(params)
        transform(record)
      end

      def transform(record)
        AnimalEntity.new(record.attributes)
      end

    end
  end
end
