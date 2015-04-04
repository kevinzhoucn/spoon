class News
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :image_url, type: String
  field :kind_of, type: String

  belongs_to :category
end
