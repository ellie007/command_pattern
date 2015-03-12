require './app/models/animal'
require 'animal/context/create_animal'

module Animal
  module AnimalFactory

    def self.create_animal_factory
      Context::CreateAnimal.new(animal_repository)
    end

    def self.animal_repository
       Repository::AnimalRepository.new(Animal)
    end

  end
end
