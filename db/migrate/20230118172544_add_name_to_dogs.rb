class AddNameToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :name, :string
  end
end
