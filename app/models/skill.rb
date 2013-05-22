class Skill < ActiveRecord::Base
  attr_accessible :instrument_id, :user_id
  belongs_to :user
  belongs_to :instrument
end
