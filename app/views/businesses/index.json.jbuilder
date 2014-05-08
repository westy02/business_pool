json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :type_id, :description, :country, :stage_id, :user_id, :category_id
  json.url business_url(business, format: :json)
end
