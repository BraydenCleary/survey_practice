class Survey < ActiveRecord::Base
  attr_accessible :title, :creator
  
  has_many :users, :through => :user_surveys
  has_many :user_surveys
  has_many :questions

  belongs_to :creator, :class_name => 'User'

  validates :title, :creator_id, :presence => true

  validates :creator_id, :uniqueness => { :scope => :title }  
end
