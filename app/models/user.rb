class User < ActiveRecord::Base
  attr_accessible :address, :dob, :email, :name, :password, :password_confirmation, :photo

  has_secure_password

  has_many :skills
  has_many :instruments, :through => :skills
  has_many :interests
  has_many :genres, :through => :interests
end
