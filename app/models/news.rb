class News
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :image_url, type: String
  field :kind_of, type: String

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
