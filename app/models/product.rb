class Product
  include Mongoid::Document
  field :name, type: String
  field :content, type: String

  field :category_id, type: String
  belongs_to :category

  mount_uploader :avatar, AvatarUploader
end
