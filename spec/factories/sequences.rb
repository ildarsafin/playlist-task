FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :user_name do |n|
    "trusty_fox#{n}"
  end
end
