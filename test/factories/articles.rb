#coding: utf-8
FactoryGirl.define do
  factory :article do
    sequence(:title){|n| "Articles#{n}"}
    body "Blah , Blah , Blah."
    released_at 2.weeks.ago
    expired_at 2.weeks.from_now
  end
end