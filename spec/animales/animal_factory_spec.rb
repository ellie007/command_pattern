require 'spec_helper'
require 'animales/animal_factory'

describe Animales::AnimalFactory do
  subject { described_class }

  it 'constructs create_animal_factory context' do
    expect(subject.create_animal).to be_a(Animales::Context::CreateAnimal)
  end

  it 'finds/returns all animals' do
    expect(subject.find_all_animals).to be_a(Animales::Context::FindAllAnimals)
  end
end
