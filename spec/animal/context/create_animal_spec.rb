require 'animal/context/create_animal'

describe AnimalLibrary::Context::CreateAnimal do
  let(:animal) { double(:animal) }
  let(:animal_repository) { double(:animal_repository, create: animal) }
  subject { described_class.new(animal_repository) }

  it 'creates an animal' do
    expect(subject.execute(name: 'sample')).to eq(animal)
  end

end
