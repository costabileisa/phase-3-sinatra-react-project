class AddLikesToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :likes, :integer
  end
end