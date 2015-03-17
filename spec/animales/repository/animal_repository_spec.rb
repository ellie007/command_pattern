require 'animales/repository/animal_repository'

describe Animales::Repository::AnimalRepository do
  let(:animal_record_1) { double(:animal_record, id: 1, name: "animal record") }
  let(:animal_record_2) { double(:animal_record, id: 2, name: "animal record") }
  let(:animal_driver) { double(:animal_model) }
  subject { described_class.new(animal_driver) }

  it 'creates an animal' do
    allow(animal_driver).to receive(:create).and_return(animal_record_1)

    expect(subject.create({})).to be_a(Animales::Entity::AnimalEntity)
    expect(subject.create({}).id).to eq(animal_record_1.id)
    expect(subject.create({}).name).to eq(animal_record_1.name)
  end

  it 'finds all animals' do
    allow(animal_driver).to receive(:all).and_return([animal_record_1, animal_record_2])
    expect(subject.find_all_animals.count).to eq(2)
    expect(subject.find_all_animals.first).to eq(subject.transform(animal_record_1))
    expect(subject.find_all_animals.last).to eq(subject.transform(animal_record_2))
  end

end
