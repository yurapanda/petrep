class AddAttachmentPictureToPatients < ActiveRecord::Migration
  def self.up
    change_table :patients do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :patients, :picture
  end
end
