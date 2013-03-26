class Choice < ActiveRecord::Base
  attr_accessible :question_id, :text

  belongs_to :question
  has_many :users, :through => :user_choices
  has_many :user_choices

  validates :question_id, :text, :presence => true
  validates :text, :uniqueness => { :scope => :question_id }


end
