class CreateOtherEducations < ActiveRecord::Migration
  def change
    create_table :other_educations do |t|
      t.text :content
      t.integer :medicine_id
      t.timestamps
    end
  end
end
