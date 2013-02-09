# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :art do
    title "MyString"
    description "MyText"
    artist_id 1
    account_id 1
  end
end
