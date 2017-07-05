FactoryGirl.define do
  factory :textbook do
    name "Textbook Title"
    description " Price $50, in Excellent Quality"
    association(:user)
  end
end
