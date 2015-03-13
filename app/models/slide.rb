class Slide
  include Mongoid::Document
  field :title, type: String
  field :image_url, type: String

  mount_uploader :avatar, AvatarUploader
end
