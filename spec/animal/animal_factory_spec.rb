require 'model_helper'
require 'animal/animal_factory'

describe AnimalLibrary::AnimalFactory do
  subject { described_class }

  it 'constructs create_animal_factory context' do
    expect(subject.create_animal).to be_a(AnimalLibrary::AnimalFactory::Context::CreateAnimal)
  end

end
