FactoryGirl.define do
  factory :textbook do
    name "Textbook Title"
    description "$50, Textbook is in Excellent Quality"
    association(:user)
  end
end
