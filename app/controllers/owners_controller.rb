require 'owners/owner_factory'
require 'owners/entity/owner_entity'

class OwnersController < ApplicationController

  def index
    context = Owners::OwnerFactory.find_all_owners
    @owners = context.execute
  end

  def new
    @owner = Owners::Entity::OwnerEntity.new(args = {})
  end

  def create
    owner_context = Owners::OwnerFactory.create_owner
    owner_context.execute(owner_params)
    redirect_to owners_path
  end

  private

  def owner_params
    params.permit(:name, pets_attributes: [:name, :owner_id, :type_of_animal])
    #params.require(:screenshot).permit(:title, :assets_attributes => [:filename, :id, :screenshot_id])
  end

end
