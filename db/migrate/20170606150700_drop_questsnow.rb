class DropQuestsnow < ActiveRecord::Migration[5.1]
  def change
    drop_table :quests
  end
end
