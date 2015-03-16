require 'animal/animal_factory'

class AnimalsController < ApplicationController

  def index
    context = AnimalLibrary::AnimalFactory.find_all_animals
    @animals = context.execute
  end

  def new
    @animal = AnimalLibrary::AnimalFactory.entity
  end

  def create
    @animal_context = AnimalLibrary::AnimalFactory.create_animal
    @animal = @animal_context.execute(animal_params)
    redirect_to animals_path
  end

  private

  def animal_params
    params.permit(:name)
  end

end
