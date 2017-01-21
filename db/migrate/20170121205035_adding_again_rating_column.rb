class AddingAgainRatingColumn < ActiveRecord::Migration
  def change
        add_column :animes, :rating, :string
    end


end
