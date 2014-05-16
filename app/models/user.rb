class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates_uniqueness_of :name
  validates_presence_of :name

  has_secure_password
end
