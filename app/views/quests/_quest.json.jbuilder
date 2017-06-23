json.extract! quest, :id, :name, :description, :category, :location, :level, :finished, :created_at, :updated_at
json.url quest_url(quest, format: :json)
