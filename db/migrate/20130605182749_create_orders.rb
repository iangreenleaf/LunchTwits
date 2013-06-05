class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :lunch, index: true
      t.references :user, index: true
      t.text :description

      t.timestamps
    end
  end
end
