class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voting_user_id
      t.integer :voted_for_user_id

      t.timestamps
    end
  end
end
