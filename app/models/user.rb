class User
  include Mongoid::Document
  field :email, type: String
  field :password, type: Digest
end
