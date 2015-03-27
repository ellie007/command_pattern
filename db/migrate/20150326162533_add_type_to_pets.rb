class AddTypeToPets < ActiveRecord::Migration
  def change
    add_column :pets, :type_of_animal, :string
  end
end
