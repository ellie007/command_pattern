require 'spec_helper'
require 'owners/owner_factory'

describe Owners::OwnerFactory do
  subject { described_class }

  it 'constructs #CreateOwner context' do
    expect(subject.create_owner).to be_a(Owners::Context::CreateOwner)
  end

  it 'constructs #FindAllOwners context' do
    expect(subject.find_all_owners).to be_a(Owners::Context::FindAllOwners)
  end

end

