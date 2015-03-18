require 'spec_helper'
require 'animales/animal_factory'

describe Animales::AnimalFactory do
  subject { described_class }

  it 'constructs #CreateAnimal context' do
    expect(subject.create_animal).to be_a(Animales::Context::CreateAnimal)
  end

  it 'constructs #FindAllAnimals context' do
    expect(subject.find_all_animals).to be_a(Animales::Context::FindAllAnimals)
  end

  it 'contructs #FindByName context' do
    expect(subject.find_by_name).to be_a(Animales::Context::FindByName)
  end
end
