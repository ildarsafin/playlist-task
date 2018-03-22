FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :user_name do |n|
    "trusty_fox#{n}"
  end

  sequence :title do |n|
    "Hello again#{n}"
  end

  sequence :interpret do |n|
    "Adelle#{n}"
  end
end
