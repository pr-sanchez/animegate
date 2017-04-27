class AddShortTitleToAnimes < ActiveRecord::Migration
  def change
    add_column :animes, :short_title, :string
  end
end
