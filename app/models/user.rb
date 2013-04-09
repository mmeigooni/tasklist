class User < ActiveRecord::Base
  attr_accessible :email, :password

  has_many :tasks

  has_secure_password
end
