FactoryGirl.define do
  factory :classroom do
    association :course
    association :student
  end
end
