require './app/models/animal'
Dir["./lib/animales/context/*"].each {|file| require file }
require 'animales/repository/animal_repository'

module Animales
  module AnimalFactory

    def self.create_animal
      Animales::Context::CreateAnimal.new(animal_repository)
    end

    def self.find_all_animals
      Animales::Context::FindAllAnimals.new(animal_repository)
    end

    def self.find_by_name
      Animales::Context::FindByName.new(animal_repository)
    end

    private

    def self.animal_repository
      Animales::Repository::AnimalRepository.new(animal_driver)
    end

    def self.animal_driver
      ::Animal
    end

  end
end
