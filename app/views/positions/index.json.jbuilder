json.array!(@positions) do |position|
  json.extract! position, :id, :title, :content, :status
  json.url position_url(position, format: :json)
end
