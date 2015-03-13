class Enquiry
  include Mongoid::Document
  field :name, type: String
  field :phone, type: String
  field :email, type: String
  field :message, type: String

  validates_presence_of :name, :phone, :email, :message
end
