class Choice < ActiveRecord::Base
  attr_accessible :question, :text

  belongs_to :question, :inverse_of => :choices
  has_many :users, :through => :user_choices
  has_many :user_choices

  validates :question, :text, :presence => true
  validates :text, :uniqueness => { :scope => :question_id }


end
