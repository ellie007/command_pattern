class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def new
    @context = AnimalFactory.create_animal
  end

  def create
    @animal = context.execute(params)
  end

end
