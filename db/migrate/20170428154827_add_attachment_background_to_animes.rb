class AddAttachmentBackgroundToAnimes < ActiveRecord::Migration
  def self.up
    change_table :animes do |t|
      t.attachment :background
    end
  end

  def self.down
    remove_attachment :animes, :background
  end
end
