require 'animal/animal_factory'

class AnimalsController < ApplicationController

  def index
    context = AnimalLibrary::AnimalFactory.find_all_animals
    @animals = context.execute
  end

  def new
  end

  def create
    @animal_context = AnimalLibrary::AnimalFactory.create_animal
    @animal = @animal_context.execute(params)
  end

end
