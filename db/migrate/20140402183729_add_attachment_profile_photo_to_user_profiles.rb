class AddAttachmentProfilePhotoToUserProfiles < ActiveRecord::Migration
  def self.up
    change_table :user_profiles do |t|
      t.attachment :profile_photo
    end
  end

  def self.down
    drop_attached_file :user_profiles, :profile_photo
  end
end
