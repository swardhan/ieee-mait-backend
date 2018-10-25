class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string :title
      t.string :awardee
      t.text :desc

      t.timestamps
    end
  end
end
