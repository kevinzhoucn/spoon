class Position
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :status, type: Integer #:status, [ ['招聘中', '0'], ['暂停招聘', '1'] ]
  field :image_url_type, type: Integer #:image_url_type, [ ['员工', '0'], ['店长', '1'] ]

  mount_uploader :avatar, AvatarUploader
  
  has_many :resumes

  scope :ongoing, -> { where(:status => 0)}  
end
