require 'animales/context/create_animal'

describe Animales::Context::CreateAnimal do
  let(:animal) { double(:animal) }
  let(:animal_repository) { double(:animal_repository) }
  subject { described_class.new(animal_repository) }

  it 'executes a #CreateAnimal context' do
    expect(animal_repository).to receive(:create).with(name: 'sample').and_return(animal)
    expect(subject.execute(name: 'sample')).to eq(animal)
  end

end
