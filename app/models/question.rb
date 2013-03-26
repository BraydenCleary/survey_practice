class Question < ActiveRecord::Base
  attr_accessible :text, :survey_id, :choices_attributes

  has_many :choices
  belongs_to :survey

  accepts_nested_attributes_for :choices
  validates :text, :uniqueness => { :scope => :survey_id }

end
