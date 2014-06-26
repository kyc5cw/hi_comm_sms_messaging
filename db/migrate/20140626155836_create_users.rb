class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :guest
      t.string :phone_number
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
