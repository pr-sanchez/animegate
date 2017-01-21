class AddAnimeIdeToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :anime_id, :integer
  end
end
