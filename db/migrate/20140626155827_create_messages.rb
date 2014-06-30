class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.boolean :source

      t.timestamps
    end
  end
end
