class CreatePayPeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :pay_periods do |t|
      t.boolean :completed
      t.datetime :completed_date
      t.date :start_date
      t.date :end_date
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
