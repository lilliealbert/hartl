FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Cat #{n}" }
    sequence(:email) { |n| "cat_#{n}@example.cat" }
    password "password"
    password_confirmation "password"

    factory :admin do
      admin true
    end
  end
end