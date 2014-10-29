class AddUserIdToMoods < ActiveRecord::Migration
  def change
    add_column :moods, :user_id, :integer
  end
end
