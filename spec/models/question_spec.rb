require 'spec_helper'


describe Question do

  it { should respond_to(:text) }
  it { should respond_to(:survey_id) }

  # it { should validate_uniqueness_of(:text), :scoped_to => :survey_id }

  it { should have_many(:choices) }
  it { should belong_to(:survey) }

  context ' when text has already been used for a question in a survey ' do
    it 'the same text should not be repeated' do
      question = create(:question)
      question.survey_id
    end
  end


end
