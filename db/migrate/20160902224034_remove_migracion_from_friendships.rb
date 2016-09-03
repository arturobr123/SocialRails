class RemoveMigracionFromFriendships < ActiveRecord::Migration[5.0]
  def change
    remove_reference :friendships, :friend, foreign_key: true
  end
end
