require 'animales/context/find_all_animals'

describe Animales::Context::FindAllAnimals do
  let(:dog) { double(:dog, name: 'dog') }
  let(:cat) { double(:cat, name: 'cat') }
  let(:animal_repository) { double(:animal_repository, find_all_animals: [dog, cat]) }
  subject { described_class.new(animal_repository) }

  it 'executes a #FindAllAnimals context' do
    expect(subject.execute).to eq([dog, cat])
  end

end
