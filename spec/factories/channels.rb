# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :channel do
    type ""
    time_sent "2013-09-04 12:26:53"
    from_user "MyString"
    message "MyString"
  end
end
