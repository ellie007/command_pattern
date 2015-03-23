require 'pets/context/find_all_pets'

describe Pets::Context::FindAllPets do
  let(:dog) { double(:dog, name: 'dog') }
  let(:cat) { double(:cat, name: 'cat') }
  let(:pet_repository) { double(:pet_repository, find_all_pets: [dog, cat]) }
  subject { described_class.new(pet_repository) }

  it 'executes a #FindAllPets context' do
    expect(subject.execute).to eq([dog, cat])
  end

end
