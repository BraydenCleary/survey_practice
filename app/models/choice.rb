class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :users, :through => :user_choices
  has_many :user_choices

  validates :question_id, :text, :presence => true
  validates :text, :uniqueness => { :scope => :question_id }


end
