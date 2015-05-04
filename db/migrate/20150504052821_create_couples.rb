class CreateCouples < ActiveRecord::Migration
  def change
    create_table :couples do |t|
      t.string :name
      t.string :partner_name

      t.timestamps null: false
    end
  end
end
