class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :data
      t.time :time
      t.string :place
      t.float :price
      t.references :tattoorequest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
