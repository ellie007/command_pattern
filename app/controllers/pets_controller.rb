require 'pets/pet_factory'
require 'pets/entity/pet_entity'

class PetsController < ApplicationController

  def index
    context = Pets::PetFactory.find_all_pets
    @pets = context.execute
  end

  def new
    @pet = Pets::Entity::PetEntity.new(args = {})
  end

  def create
    context = Pets::PetFactory.create_pet
    context.execute(pet_params)
    redirect_to pets_path
  end

  private

  def pet_params
    params.permit(:name, :owner_id, :type_of_animal)
  end

end
