class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :name
      t.string :banner

      t.timestamps
    end
  end
end
