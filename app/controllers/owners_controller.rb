require 'owners/owner_factory'
require 'owners/entity/onwer_entity'

class OwnersController < ApplicationController

  def index
    context = Owners::OwnerFactory.find_all_owners
    @owners = context.execute
  end

  def new
    @owner = Owners::Entity::OwnerEntity.new(args = {})
  end

  def create
    context = Owners::OwnerFactory.create_owner
    context.execute(owner_params)
    redirect_to owners_path
  end

end
