class CreateObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :objectives do |t|
      t.string :name
      t.boolean :completed
      t.timestamps
    end
  end
end
