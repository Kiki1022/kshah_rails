class CreateStylistts < ActiveRecord::Migration[6.0]
  def change
    create_table :stylists do |t|

      t.timestamps
    end
  end
end
