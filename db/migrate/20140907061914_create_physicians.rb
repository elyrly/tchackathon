class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.timestamps
    end
  end
end
