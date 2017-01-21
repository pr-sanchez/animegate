class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.text :description
      t.string :anime_size
      t.string :studio
      t.string :rating
      t.string :fansub
      t.string :language
      t.string :subtitles
      t.string :ovas
      t.string :resolution
      t.string :file_format
      t.string :anime_episodes
      t.string :server
      t.string :uploader
      t.string :year
      t.string :genre

      t.timestamps null: false
    end
  end
end
