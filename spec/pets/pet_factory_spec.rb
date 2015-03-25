require 'spec_helper'
require 'pets/pet_factory'

describe Pets::PetFactory do
  subject { described_class }

  it 'constructs #CreatePet context' do
    expect(subject.create_pet).to be_a(Pets::Context::CreatePet)
  end

  it 'constructs #FindAllPets context' do
    expect(subject.find_all_pets).to be_a(Pets::Context::FindAllPets)
  end

  it 'contructs #FindByName context' do
    expect(subject.find_by_name).to be_a(Pets::Context::FindByName)
  end
end
  