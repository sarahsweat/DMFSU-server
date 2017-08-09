class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :message, default: "You rock! Keep dancing, FTK!!"
      t.references :donor, foreign_key: true
      t.references :dancer, foreign_key: true

      t.timestamps
    end
  end
end
