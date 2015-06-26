json.array!(@players) do |player|
  json.extract! player, :id, :firstname, :lastname, :picture
  json.url player_url(player, format: :json)
end
