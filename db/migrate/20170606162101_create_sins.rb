class CreateSins < ActiveRecord::Migration[5.1]
  def change
    create_table :sins do |t|
      t.string :name
      t.string :reason

      t.timestamps
    end
  end
end
