class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.references :mentor, null: false
      t.references :student
      t.integer :phase, null: false
      t.text :body

      t.timestamps null: false
    end
  end
end
