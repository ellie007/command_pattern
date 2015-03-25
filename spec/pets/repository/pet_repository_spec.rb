require 'pets/repository/pet_repository'

describe Pets::Repository::PetRepository do
  let(:pet_record_1) { double(:pet_record, id: 1, name: "pet record") }
  let(:pet_record_2) { double(:pet_record, id: 2, name: "pet record") }
  let(:pet_driver) { double(:pet_model) }
  subject { described_class.new(pet_driver) }

  it '#create/creates a pet' do
    allow(pet_driver).to receive(:create).and_return(pet_record_1)

    expect(subject.create({})).to be_a(Pets::Entity::PetEntity)
    expect(subject.create({}).id).to eq(pet_record_1.id)
    expect(subject.create({}).name).to eq(pet_record_1.name)
  end

  it '#find_all_pets/finds all pets' do
    allow(pet_driver).to receive(:all).and_return([pet_record_1, pet_record_2])
    expect(subject.find_all_pets.count).to eq(2)
    expect(subject.find_all_pets.first).to eq(subject.transform(pet_record_1))
    expect(subject.find_all_pets.last).to eq(subject.transform(pet_record_2))
  end

  it '#find_by_name/finds pets by name' do
    allow(pet_driver).to receive(:where).and_return([pet_record_1, pet_record_2])

    expect(subject.find_by_name("pet record").first).to eq(subject.transform(pet_record_1))
    expect(subject.find_by_name("pet record").last).to eq(subject.transform(pet_record_2))
  end

  it 'record by name does not exists' do
    allow(pet_driver).to receive(:where).and_return([])

    expect{subject.find_by_name("fake_name")}.to raise_error
  end

  it 'transforms a record in to an #PetEntity' do
    expect(subject.transform(pet_record_1)).to be_a(Pets::Entity::PetEntity)
  end

end
