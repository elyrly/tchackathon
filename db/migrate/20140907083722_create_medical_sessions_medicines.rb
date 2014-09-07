class CreateMedicalSessionsMedicines < ActiveRecord::Migration
  def change
    create_table :medical_sessions_medicines do |t|
   t.integer "medicine_id"
    t.integer "medical_session_id"
      t.timestamps
    end
  end
end
