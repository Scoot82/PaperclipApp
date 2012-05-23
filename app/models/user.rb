class User < ActiveRecord::Base
  attr_accessible :email, :name, :avatar
  has_attached_file :avatar
end
