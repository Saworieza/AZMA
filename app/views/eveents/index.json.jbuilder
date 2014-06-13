json.array!(@eveents) do |eveent|
  json.extract! eveent, :id, :Date, :title, :description
  json.url eveent_url(eveent, format: :json)
end
