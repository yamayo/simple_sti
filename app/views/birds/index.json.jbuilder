json.array!(@birds) do |bird|
  json.extract! bird, :id, :type, :name, :age
  json.url bird_url(bird, format: :json)
end
