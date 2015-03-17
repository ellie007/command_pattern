require 'animales/repository/animal_repository'

describe Animales::Repository::AnimalRepository do
  let(:animal_record) { double(:animal_record, id: 1, name: "animal record") }
  let(:animal_driver) { double(:animal_model) }
  subject { described_class.new(animal_driver) }

  it 'creates an animal' do
    allow(animal_driver).to receive(:create).and_return(animal_record)

    expect(subject.create({})).to be_a(Animales::Entity::AnimalEntity)
    expect(subject.create({}).id).to eq(animal_record.id)
    expect(subject.create({}).name).to eq(animal_record.name)
  end

end
