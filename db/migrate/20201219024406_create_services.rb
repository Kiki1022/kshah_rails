class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.integer :appointment_id  
      t.string :name
      t.timestamps
    end
  end
end
