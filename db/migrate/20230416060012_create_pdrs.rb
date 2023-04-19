class CreatePdrs < ActiveRecord::Migration[7.0]
  def change
    create_table :pdrs do |t|
      t.text :my_zone
      t.text :answer

      t.timestamps
    end
  end
end
