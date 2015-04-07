class Product
  include Mongoid::Document
  field :name, type: String
  field :content, type: String

  field :category_id, type: String
  field :sub_category_id, type: String
  belongs_to :category
  belongs_to :sub_category

  mount_uploader :avatar, AvatarUploader

  def self.search(search)
    if search
      where(name: /#{search}/)
    else
      all
    end
  end
end
