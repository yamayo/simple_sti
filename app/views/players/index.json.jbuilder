json.array!(@players) do |player|
  json.extract! player, :id, :type, :name, :club, :batting_average, :created_at, :updated_at
  json.url player_url(player, format: :json)
end
