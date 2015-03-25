require 'owners/repository/owner_repository'

describe Owners::Repository::OwnerRepository do
  let(:owner_record_1) { double(:owner_record, id: 1, name: "owner record") }
  let(:owner_record_2) { double(:owner_record, id: 2, name: "owner record") }
  let(:owner_driver) { double(:owner_model) }
  subject { described_class.new(owner_driver) }

  it '#create/creates a owner' do
    allow(owner_driver).to receive(:create).and_return(owner_record_1)

    expect(subject.create({})).to be_a(Owners::Entity::OwnerEntity)
    expect(subject.create({}).id).to eq(owner_record_1.id)
    expect(subject.create({}).name).to eq(owner_record_1.name)
  end

  it '#find_all_owners/finds all owners' do
    allow(owner_driver).to receive(:all).and_return([owner_record_1, owner_record_2])
    expect(subject.find_all_owners.count).to eq(2)
    expect(subject.find_all_owners.first).to eq(subject.transform(owner_record_1))
    expect(subject.find_all_owners.last).to eq(subject.transform(owner_record_2))
  end

  it 'transforms a record in to an #OwnerEntity' do
    expect(subject.transform(owner_record_1)).to be_a(Owners::Entity::OwnerEntity)
  end

end
