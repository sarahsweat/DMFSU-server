class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :bio, default: "Support our team in our journey to dance and raise money FTK!"
      t.string :photo, default: 'https://assets.donordrive.com/clients/cmndancemarathon/img/avatar-team-default.gif'
      t.integer :goal, default: 10000
      t.timestamps
    end
  end
end
