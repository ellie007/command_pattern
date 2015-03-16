require './app/models/animal'
require 'animal/context/create_animal'
require 'animal/context/find_all_animals'
require 'animal/repository/animal_repository'

module AnimalLibrary
  module AnimalFactory

    def self.create_animal
      AnimalLibrary::Context::CreateAnimal.new(animal_repository)
    end

    def self.find_all_animals
      AnimalLibrary::Context::FindAllAnimals.new(animal_repository)
    end

    private

    def self.animal_repository
      AnimalLibrary::Repository::AnimalRepository.new
    end

  end
end
