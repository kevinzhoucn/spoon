class Resume
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  
  field :name, type: String
  field :phone, type: String
  field :email, type: String

  validates_presence_of :name, :phone

  field :position_id, type: String
  belongs_to :position
  
  mount_uploader :avatar, AvatarUploader
end
