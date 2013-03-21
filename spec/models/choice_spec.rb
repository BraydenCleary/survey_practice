require 'spec_helper'

describe Choice do

  let!(:choice) { create :choice }
  
  it { should respond_to(:question_id) }
  it { should respond_to(:text) }

  it { should validate_presence_of(:question_id) }
  it { should validate_presence_of(:text) }

  it { should validate_uniqueness_of(:text).scoped_to(:question_id) }
end
