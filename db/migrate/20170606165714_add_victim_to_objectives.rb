class AddVictimToObjectives < ActiveRecord::Migration[5.1]
  def change
    add_column :objectives, :victim, :string
  end
end
