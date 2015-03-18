require 'animales/repository/animal_repository'

describe Animales::Repository::AnimalRepository do
  let(:animal_record_1) { double(:animal_record, id: 1, name: "animal record") }
  let(:animal_record_2) { double(:animal_record, id: 2, name: "animal record") }
  let(:animal_driver) { double(:animal_model) }
  subject { described_class.new(animal_driver) }

  it '#create/creates an animal' do
    allow(animal_driver).to receive(:create).and_return(animal_record_1)

    expect(subject.create({})).to be_a(Animales::Entity::AnimalEntity)
    expect(subject.create({}).id).to eq(animal_record_1.id)
    expect(subject.create({}).name).to eq(animal_record_1.name)
  end

  it '#find_all_animals/finds all animals' do
    allow(animal_driver).to receive(:all).and_return([animal_record_1, animal_record_2])
    expect(subject.find_all_animals.count).to eq(2)
    expect(subject.find_all_animals.first).to eq(subject.transform(animal_record_1))
    expect(subject.find_all_animals.last).to eq(subject.transform(animal_record_2))
  end

  it '#find_by_name/finds animals by name' do
    allow(animal_driver).to receive(:where).and_return([animal_record_1, animal_record_2])

    expect(subject.find_by_name("animal record").first).to eq(subject.transform(animal_record_1))
    expect(subject.find_by_name("animal record").second).to eq(subject.transform(animal_record_2))
  end

  xit '' do
    p subject.transform
  end

end
