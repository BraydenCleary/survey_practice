class Survey < ActiveRecord::Base
  attr_accessible :title, :creator, :questions_attributes

  has_many :users, :through => :user_surveys
  has_many :user_surveys
  has_many :questions, :inverse_of => :survey

  belongs_to :creator, :class_name => 'User'

  accepts_nested_attributes_for :questions

  validates :title, :creator_id, :presence => true

  validates :creator_id, :uniqueness => { :scope => :title }  
end
