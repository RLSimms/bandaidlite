class Genre < ActiveRecord::Base
  attr_accessible :name
  has_many :users, :through => :interests
  has_many :interests
end
