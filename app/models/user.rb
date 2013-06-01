class User < ActiveRecord::Base
  attr_accessible :address, :dob, :email, :name, :password, :password_confirmation, :photo

  has_secure_password

  has_many :skills
  has_many :instruments, :through => :skills
  has_many :interests
  has_many :genres, :through => :interests

  has_many :voting_users, class_name: 'Vote', foreign_key: 'voting_user_id'
  has_many :voted_for_users, class_name: 'Vote', foreign_key: 'voted_for_user_id'

  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  # has_many :votes
end
