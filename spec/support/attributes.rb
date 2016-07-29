def employee_attributes(overrides = {})
  {
    first_name: "Kevin",
    last_name: "Wei",
    email: "kevin.wei@foo.com",
    hired_date: "2016-01-01",
    work_group_id: 1,
    password: "password"
  }.merge(overrides)


end
