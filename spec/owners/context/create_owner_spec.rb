require 'owners/context/create_owner'

describe Owners::Context::CreateOwner do
  let(:owner) { double(:owner) }
  let(:owner_repository) { double(:owner_repository) }
  subject { described_class.new(owner_repository) }

  it 'executes a #CreateOwner context' do
    expect(owner_repository).to receive(:create).with(name: 'sample').and_return(owner)
    expect(subject.execute(name: 'sample')).to eq(owner)
  end

end
