class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def create
    context = AnimalFactory.create_animal_factory
    @animal = context.execute(params)
  end

end
