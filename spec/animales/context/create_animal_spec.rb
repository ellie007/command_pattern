require 'animales/context/create_animal'

describe Animales::Context::CreateAnimal do
  let(:animal) { double(:animal) }
  let(:animal_repository) { double(:animal_repository, create: animal) }
  subject { described_class.new(animal_repository) }

  it 'executes a #CreateAnimal context' do
    expect(subject.execute(name: 'sample')).to eq(animal)
  end

end
