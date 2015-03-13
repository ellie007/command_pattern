require 'model_helper'
require 'animal/animal_factory'

describe AnimalLibrary::AnimalFactory do

  it 'constructs create_animal_factory context' do
    subject = described_class.create_animal_factory
    expect(subject).to be_a(AnimalLibrary::AnimalFactory::Context::CreateAnimal)
  end

end
