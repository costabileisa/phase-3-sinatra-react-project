class CreateBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
        t.string :breed
        t.string :size
        t.timestamps
    end
  end
end
