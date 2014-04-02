class UserProfile < ActiveRecord::Base
  
  # Associating UserProfile model to User model
  belongs_to :user
  
  # UserProfile form's accessible attributes
  attr_accessible :profile_photo, :firstname, :middlename, :lastname, :gender,
                  :date_of_birth, :nationality, :phone_contact

  # Profile photo attachment to the UserProfile model
  has_attached_file :profile_photo, :styles => {:medium => "300 * 300>"}

  #validations
  validates :firstname, presence:true
  validates :lastname, presence:true
  validates :gender, presence:true
  validates :date_of_birth, presence:true
  validates :nationality, presence:true
  validates :phone_contact, presence:true
  validates_attachment :profile_photo,
                       :presence => true,
                       :content_type => { :content_type => ["image/jpg", "image/png"],
                       :message => "Your attachment type is not allowed (only jpg/png)"}
end
