  class Vote < ActiveRecord::Base
  attr_accessible :voted_for_user_id, :voting_user_id

  belongs_to :voting_user, class_name: 'User', foreign_key: 'voting_user_id'
  belongs_to :voted_for_user, class_name: 'User', foreign_key: 'voted_for_user_id'


validate :user_cannot_vote_more_than_three_times
validate :user_cannot_vote_for_themself

    def user_cannot_vote_more_than_three_times
    if self.voting_user.voting_users.count >= 3
      errors.add(:user_id, "has already voted three times")
    end
  end

  def user_cannot_vote_for_themself
    if self.voted_for_user == self.voting_user
      errors.add(:user_id, "can't vote for themself")
    end
  end



end
