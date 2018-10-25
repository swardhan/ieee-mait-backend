class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :desc
      t.string :title

      t.timestamps
    end
  end
end
