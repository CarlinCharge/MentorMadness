class CreateAppointmentTopics < ActiveRecord::Migration
  def change
    create_table :appointment_topics do |t|
      t.references :appointment, null: false
      t.references :topic, null: false

      t.timestamps null: false
    end
  end
end
