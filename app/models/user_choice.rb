class UserChoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :choice

  validates :user_id, :choice_id, :presence => true
  validates :choice_id, :uniqueness => { :scope => :user_id }

end
