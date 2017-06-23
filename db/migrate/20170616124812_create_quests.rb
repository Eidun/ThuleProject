class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :location
      t.integer :level
      t.boolean :finished

      t.timestamps
    end
  end
end
