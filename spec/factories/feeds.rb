# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feed do
    type ""
    time_sent "2013-09-04 13:38:08"
    from_user "MyString"
    message "MyString"
  end
end
