class CreateStylists < ActiveRecord::Migration[6.0]
  def change
    create_table :stylists do |t|  
      t.string :username
      t.string :password_digest
      t.string :uid
      t.string :provider
      t.timestamps
    end
  end
end
