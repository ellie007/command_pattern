require 'owners/context/find_all_owners'

describe Owners::Context::FindAllOwners do
  let(:alice) { double(:alice, name: 'Alice') }
  let(:bob) { double(:bob, name: 'Bob') }
  let(:owner_repository) { double(:owner_repository, find_all_owners: [alice, bob]) }
  subject { described_class.new(owner_repository) }

  it 'executes a #FindAllOwners context' do
    expect(subject.execute).to eq([alice, bob])
  end

end
