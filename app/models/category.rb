class Category
  include Mongoid::Document
  field :title, type: String
  # field :kind_of, type: String # [1 product_main_category, 2 product_sub_category, 3 news_category]
  has_many :sub_categories
  # has_many :products
  # has_many :news
end
