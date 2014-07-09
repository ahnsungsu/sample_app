FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "J #{n}" }
    sequence(:email) { |n| "j#{n}@foo.bar" }
    password "abc123"
    password_confirmation "abc123"

    factory :admin do
      admin true
    end
  end

  factory :portrait do
    sequence(:filename)  { |n| "children-#{n}.jpg" }
    sequence(:thumbnail) { |n| "thumb-children-#{n}.jpg" }
    description ""
    user
  end
end
