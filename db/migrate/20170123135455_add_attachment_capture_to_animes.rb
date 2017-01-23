class AddAttachmentCaptureToAnimes < ActiveRecord::Migration
  def self.up
    change_table :animes do |t|
      t.attachment :capture
    end
  end

  def self.down
    remove_attachment :animes, :capture
  end
end
