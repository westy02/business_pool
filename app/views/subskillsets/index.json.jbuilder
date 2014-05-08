json.array!(@subskillsets) do |subskillset|
  json.extract! subskillset, :id, :name
  json.url subskillset_url(subskillset, format: :json)
end
