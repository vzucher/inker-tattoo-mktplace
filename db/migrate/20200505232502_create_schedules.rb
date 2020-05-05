class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.references :tattoo_request, null: false, foreign_key: true
      t.datetime :date_time_options, array: true
      t.string :place
      t.float :price
      t.datetime :chosen_date
      t.datetime :accepted_at

      t.timestamps
    end
  end
end
