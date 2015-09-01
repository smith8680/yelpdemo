json.array!(@resturaunts) do |resturaunt|
  json.extract! resturaunt, :id, :name, :address, :phone, :website
  json.url resturaunt_url(resturaunt, format: :json)
end
