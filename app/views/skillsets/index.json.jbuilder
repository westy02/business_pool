json.array!(@skillsets) do |skillset|
  json.extract! skillset, :id, :name
  json.url skillset_url(skillset, format: :json)
end
