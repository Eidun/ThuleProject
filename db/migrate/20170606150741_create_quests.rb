class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.boolean :finished
      t.string :rank

      t.timestamps
    end
  end
end
