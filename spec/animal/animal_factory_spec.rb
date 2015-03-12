require 'model_helper'
require 'animal/animal_factory'

describe Animal::AnimalFactory do

  it 'constructs create_animal_factory context' do
    subject = described_class.create_animal_factory
    expect(subject).to be_a(Animal::AnimalFactory::Context::CreateAnimal)
  end

end
