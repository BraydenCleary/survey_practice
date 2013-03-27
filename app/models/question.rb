class Question < ActiveRecord::Base
  attr_accessible :text, :survey, :choices_attributes

  has_many :choices, :inverse_of => :question
  belongs_to :survey, :inverse_of => :questions

  accepts_nested_attributes_for :choices
  validates :text, :uniqueness => { :scope => :survey_id }

end
