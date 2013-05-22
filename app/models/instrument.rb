class Instrument < ActiveRecord::Base
  attr_accessible :name, :photo
  has_many :users, :through => :skills
  has_many :skills
end
