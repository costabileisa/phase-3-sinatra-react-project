class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
        t.string :img_url
        t.string :img_description
        t.integer :breed_id
        t.timestamps
    end
  end
end
