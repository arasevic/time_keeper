def employee_attributes(overrides = {})
  {
    first_name: "Kevin",
    last_name: "Wei",
    email: "kevin.wei@ideacrew.com",
    hired_date: "2016-01-01"
  }.merge(overrides)
end