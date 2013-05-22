class Interest < ActiveRecord::Base
  attr_accessible :genre_id, :user_id
  belongs_to :user
  belongs_to :genre
end
