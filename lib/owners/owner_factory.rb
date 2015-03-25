require './app/models/owner'
Dir["./lib/owners/context/*"].each {|file| require file }
require 'owners/repository/owner_repository'

module Owners
  module OwnerFactory

    def self.create_owner
      Owners::Context::CreateOwner.new(owner_repository)
    end

    def self.find_all_owners
      Owners::Context::FindAllOwners.new(owner_repository)
    end

    private

    def self.owner_repository
      Owners::Repository::OwnerRepository.new(owner_driver)
    end

    def self.owner_driver
      ::Owner
    end

  end
end
