require 'spec_helper'

describe User do


  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest)}
  it { should validate_confirmation_of(:password)}

  it { should have_many(:surveys_created) }
  it { should have_many(:surveys_answered) }
  it { should have_many(:user_surveys) }

  context 'when user must be in database' do
    let!(:user) { create(:user) }
    it { should validate_uniqueness_of(:email) }
  end

end
