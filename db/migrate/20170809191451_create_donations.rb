class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :message, default: "You rock! Keep dancing, FTK!!"
      t.references :donor, index: true
      t.references :dancer, index: true

      t.timestamps
    end
  end
end
