FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Name#{n}"}
    sequence(:email) { |n| "email#{n}@example.com"}
    phone_number "000-000-0000"
  end



  factory :group_ride do
    sequence(:title) { |t| "Ride #{n}"}
    description "A fun ride"
    association :organizer, factory: :user
  end
end