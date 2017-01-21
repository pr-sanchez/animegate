class AddUserIdToAnimes < ActiveRecord::Migration
  def change
    add_column :animes, :user_id, :integer
  end
end
