json.array!(@stages) do |stage|
  json.extract! stage, :id, :name, :rank
  json.url stage_url(stage, format: :json)
end
