class AddAttachmentPictureToItems < ActiveRecord::Migration[5.0]
  def self.up
    change_table :items do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :items, :picture
  end
end
