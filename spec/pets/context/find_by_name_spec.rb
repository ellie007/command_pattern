require 'pets/context/find_by_name'

describe Pets::Context::FindByName do
  let(:dog_1) { double(:dog_1, name: 'Fido') }
  let(:dog_2) { double(:dog_2, name: 'Fido') }
  let(:pet_repository) { double(:pet_repository, find_by_name: [dog_1, dog_2]) }
  subject { described_class.new(pet_repository) }

  it 'executes a #FindByName context' do
    expect(subject.execute("Fido")).to eq([dog_1, dog_2])
  end
end
