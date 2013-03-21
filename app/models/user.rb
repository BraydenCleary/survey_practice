class User < ActiveRecord::Base
  attr_accessible :password_confirmation

  has_secure_password
  has_many :surveys_created , :class_name => 'Survey', :foreign_key => 'creator_id'
  has_many :surveys_answered , :through => :user_surveys, :source => :survey
  has_many :user_surveys

  validates :username, :email, :password_digest, :presence => true
  validates :email, :uniqueness => true

end
