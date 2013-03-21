class Question < ActiveRecord::Base
  has_many :choices
  belongs_to :survey

  validates :text, :uniqueness => { :scope => :survey_id }

end
