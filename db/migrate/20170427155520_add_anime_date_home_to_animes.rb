class AddAnimeDateHomeToAnimes < ActiveRecord::Migration
  def change
    add_column :animes, :anime_date_home, :string
  end
end
