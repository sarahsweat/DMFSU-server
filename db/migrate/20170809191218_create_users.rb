class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, default: "fake@fake.com"
      t.integer :zip, default: 32304
      t.string :photo, default: "https://assets.donordrive.com/clients/cmndancemarathon/img/avatar-team-default.gif"
      t.string :bio, default: "I hope you will consider supporting my participation in this event. All contributions will benefit my local Children's Miracle Network Hospital. Any contribution will help, and all donations are tax deductible."
      t.integer :goal, default: 1000
      t.boolean :team_captain, default: false
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
