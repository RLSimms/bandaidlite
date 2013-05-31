class Message < ActiveRecord::Base
  attr_accessible :receiver_id, :sender_id, :whats_written, :conversation_id
  belongs_to :receiver, class_name: 'User'
  belongs_to :sender, class_name: 'User'
  belongs_to :conversation
end
