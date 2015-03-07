json.array!(@affiliates) do |affiliate|
  json.extract! affiliate, :id, :title, :content
  json.url affiliate_url(affiliate, format: :json)
end
