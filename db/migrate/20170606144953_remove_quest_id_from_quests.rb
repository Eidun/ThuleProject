class RemoveQuestIdFromQuests < ActiveRecord::Migration[5.1]
  def change
    remove_column :quests, :quest_id, :integer
  end
end
