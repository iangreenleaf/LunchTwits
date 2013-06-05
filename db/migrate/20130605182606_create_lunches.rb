class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :title
      t.text :notes
      t.references :restaurant, index: true
      t.datetime :occurring

      t.timestamps
    end
  end
end
