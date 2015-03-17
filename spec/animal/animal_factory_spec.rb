require 'spec_helper'
require 'animal/animal_factory'

describe AnimalLibrary::AnimalFactory do
  subject { described_class }

  it 'constructs create_animal_factory context' do
    expect(subject.create_animal).to be_a(AnimalLibrary::Context::CreateAnimal)
  end

  it 'finds/returns all animals' do
    expect(subject.find_all_animals).to be_a(AnimalLibrary::Context::FindAllAnimals)
  end
end
