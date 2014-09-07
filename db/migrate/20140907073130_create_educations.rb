class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.text :content
      t.integer :medicine_id
      t.timestamps
    end
  end
end
