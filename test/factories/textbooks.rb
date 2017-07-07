FactoryGirl.define do
  factory :textbook do
    name "Software Engineering"
    course "CMPT276"
    instructor "Pearce"
    price "$50"
    description "Textbook is in Excellent Quality"
    association(:user)
  end
end
