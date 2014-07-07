FactoryGirl.define do
  factory :user do
    name     "Jane Smith"
    email    "jane@bar.foo"
    password "abc123"
    password_confirmation "abc123"
  end
end
