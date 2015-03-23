require 'pets/context/create_pet'

describe Pets::Context::CreatePet do
  let(:pet) { double(:pet) }
  let(:pet_repository) { double(:pet_repository) }
  subject { described_class.new(pet_repository) }

  it 'executes a #CreatePet context' do
    expect(pet_repository).to receive(:create).with(name: 'sample').and_return(pet)
    expect(subject.execute(name: 'sample')).to eq(pet)
  end

end
