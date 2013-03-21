require 'spec_helper'

describe Survey do

  let!(:survey) { create :survey }

  it { should respond_to(:title) }
  it { should respond_to(:creator_id) }

  it { should have_many(:users) }
  it { should have_many(:user_surveys) }
  it { should have_many(:questions) }
  it { should belong_to(:creator) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:creator_id) }
  it { should validate_uniqueness_of(:creator_id).scoped_to(:title) }

end
