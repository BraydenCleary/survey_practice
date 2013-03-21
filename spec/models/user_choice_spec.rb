require 'spec_helper'

describe UserChoice do
  let!(:user_choice) { create :user_choice }
    
  it { should respond_to(:user_id) }
  it { should respond_to(:choice_id) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:choice_id) }

  it { should validate_uniqueness_of(:choice_id).scoped_to(:user_id) }
end
