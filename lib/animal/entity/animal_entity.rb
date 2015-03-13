module AnimalLibrary
  module Entity
    AnimalEntity = Struct.new(
      :id,
      :name
    ) do

      def initialize(fields)
        super(*fields.values_at(*members))
      end

    end
  end
end

