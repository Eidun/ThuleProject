class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.string :name
      t.string :category
      t.boolean :completed
      t.references :quest, foreign_key: true

      t.timestamps
    end
  end
end
