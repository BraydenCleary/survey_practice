FactoryGirl.define do
    
  factory :user, :aliases => [:creator] do
    sequence(:username) { |n| "User#{n}"}
    sequence(:email) { |n| "email#{n}@email.com"}
    password 'password'
    password_confirmation 'password'
  end

  factory :survey do
    sequence(:title) { |n| "title#{n}" }
    creator
  end

  factory :user_survey do
    user
    survey
  end

  factory :question do
    sequence(:text) { |n| "Text #{n} more text"}
    survey
  end

  factory :choice do
    sequence(:text) { |n| "Text #{n} more text"}
    question
  end

  factory :user_choice do 
    user
    choice
  end

end
