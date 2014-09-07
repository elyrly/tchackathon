class CreateMedicalSessions < ActiveRecord::Migration
  def change
    create_table :medical_sessions do |t|
      t.datetime "start_time"
      t.datetime "stop_time"
      t.timestamps
    end
  end
end
