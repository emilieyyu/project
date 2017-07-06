FactoryGirl.define do
    factory :user do
        sequence (:email){|n| "example_user#{n}@example.com"}
        password "password"
    end
end