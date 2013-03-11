FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Cat #{n}" }
    sequence(:email) { |n| "cat_#{n}@cat.cat" }
    password "password"
    password_confirmation "password"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "BEEEEEEEEEEEP"
    user
  end
end