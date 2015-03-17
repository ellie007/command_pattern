require 'animales/animal_factory'
require 'animales/entity/animal_entity'

class AnimalsController < ApplicationController

  def index
    context = Animales::AnimalFactory.find_all_animals
    @animals = context.execute
  end

  def new
    @animal = Animales::Entity::AnimalEntity.new(args = {})
  end

  def create
    context = Animales::AnimalFactory.create_animal
    context.execute(animal_params)
    redirect_to animals_path
  end

  private

  def animal_params
    params.permit(:name)
  end

end
