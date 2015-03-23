class AnimalsTableToPetsTable < ActiveRecord::Migration
  def change
    rename_table :animals, :pets
  end
end
