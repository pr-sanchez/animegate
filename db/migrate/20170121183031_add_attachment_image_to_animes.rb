class AddAttachmentImageToAnimes < ActiveRecord::Migration
  def self.up
    change_table :animes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :animes, :image
  end
end
