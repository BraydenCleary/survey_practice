require 'spec_helper'

describe UserSurvey do

  let!(:user_survey) { create :user_survey }

  it { should respond_to(:user_id) }
  it { should respond_to(:survey_id) }

  it { should belong_to(:user) }
  it { should belong_to(:survey) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:survey_id) }

  it { should validate_uniqueness_of(:user_id).scoped_to(:survey_id) }



end
