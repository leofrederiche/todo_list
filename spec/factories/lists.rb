FactoryGirl.define do
  factory :list do
    title "MyString"
    description "MyString"
  end

  factory :invalid_list, parent: :list do
    title nil
    description nil
  end
end
