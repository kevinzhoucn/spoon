json.array!(@cpanel_slides) do |cpanel_slide|
  json.extract! cpanel_slide, :id, :title, :image_url
  json.url cpanel_slide_url(cpanel_slide, format: :json)
end
