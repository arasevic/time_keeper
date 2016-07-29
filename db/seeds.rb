# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(
    first_name: 'Lily',
    last_name: 'Li',
    email: 'lily@example.com'
)

WorkGroup.create!([
  {
    name: 'Alpha',
    admin_id: "1"
  },
  {
    name: 'Beta',
    admin_id: "1"
  },
  {
    name: 'Gamma',
    admin_id: "1"
  }
])

Employee.create!([
  {
    first_name: 'Lily',
    last_name: 'Li',
    email: 'lily@example.com',
    password: 'secret',
    hired_date: '2016-01-01',
    work_group_id: '1',
    role: "admin"
  },
  {
    first_name: 'Zoey',
    last_name: 'Johanson',
    email: 'zoey@example.com',
    password: 'secret',
    hired_date: '2016-02-02',
    work_group_id: '1',
    role: "contractor"
  },
  {
    first_name: 'Matt',
    last_name: 'Black',
    email: 'matt@example.com',
    password: 'secret',
    hired_date: '2016-03-03',
    work_group_id: '2',
    role: "contractor"
  },
  {
    first_name: 'James',
    last_name: 'Houser',
    email: 'james@example.com',
    password: 'secret',
    hired_date: '2016-04-04',
    work_group_id: '3',
    role: "contractor"
  }
])

PayPeriod.create!([
  {
    start_date: '2016-07-10',
    end_date: '2016-07-23',
    employee_id: '1'
  },
  {
    start_date: '2016-07-10',
    end_date: '2016-07-23',
    employee_id: '2'
  },
  {
    start_date: '2016-07-10',
    end_date: '2016-07-23',
    employee_id: '3'
  },
  {
    start_date: '2016-07-10',
    end_date: '2016-07-23',
    employee_id: '4'
  },
  {
    start_date: '2016-07-24',
    end_date: '2016-08-06',
    employee_id: '1'
  },
  {
    start_date: '2016-07-24',
    end_date: '2016-08-06',
    employee_id: '2'
  },
  {
    start_date: '2016-07-24',
    end_date: '2016-08-06',
    employee_id: '3'
  },
  {
    start_date: '2016-07-24',
    end_date: '2016-08-06',
    employee_id: '4'
  },
])
WorkDay.create!([
  {
    date: '2016-07-10',
    day: 'Sunday',
    pay_period_id: 2
  },
  {
    date: '2016-07-11',
    day: 'Monday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-12',
    day: 'Tuesday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-13',
    day: 'Wednesday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-14',
    day: 'Thursday',
    sick_leave: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-15',
    day: 'Friday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-16',
    day: 'Saturday',
    vacation: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-17',
    day: 'Sunday',
    over_time: 1,
    maternity_leave: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-18',
    day: 'Monday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-19',
    day: 'Tuesday',
    over_time: 1,
    non_paid_leave: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-20',
    day: 'Wednesday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-21',
    day: 'Thursday',
    sick_leave: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-22',
    day: 'Friday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  },
  {
    date: '2016-07-23',
    day: 'Saturday',
    over_time: 1,
    regular: 8,
    pay_period_id: 2
  }
])
