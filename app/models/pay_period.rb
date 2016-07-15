class PayPeriod < ApplicationRecord
  belongs_to :employee
  has_many :work_days

end
