class PayPeriod < ApplicationRecord
  belongs_to :employee
  has_many :work_days

  accepts_nested_attributes_for :work_days
end
