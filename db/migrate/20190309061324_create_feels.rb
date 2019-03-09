class CreateFeels < ActiveRecord::Migration[5.1]
  def change
    create_table :feels do |t|
      t.date :date
      t.integer :mood
      t.string :note

      t.timestamps
    end
  end
end
