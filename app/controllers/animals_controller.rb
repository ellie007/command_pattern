require 'pets/pet_factory'
require 'pets/entity/pet_entity'

class PetsController < ApplicationController

  def index
    context = Pets::PetFactory.find_all_animals
    @animals = context.execute
  end

  def new
    @animal = Pets::Entity::PetEntity.new(args = {})
  end

  def create
    context = Pets::PetFactory.create_animal
    context.execute(animal_params)
    redirect_to animals_path
  end

  private

  def animal_params
    params.permit(:name)
  end

end
