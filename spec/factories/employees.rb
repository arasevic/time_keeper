FactoryGirl.define do
  factory :employee do
    first_name "Kevin"
    last_name "Wei"
    email "kevin.wei@foo.com"
    password "password"
    role 1
  end
end
