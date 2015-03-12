module Animal
  module Entity
    class AnimalEntity

      def initialize(attrs = {})
        transform(attrs)
      end

      def transform(attrs)
        animal = Struct.new(:id, :name)
        animal.id = attrs[:id]
        anima.name = attrs[:name]
        animal
      end

    end
  end
end
