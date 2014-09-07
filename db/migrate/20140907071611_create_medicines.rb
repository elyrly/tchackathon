class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :drug_name
      t.string :brand
      t.timestamps
    end
  end
end
