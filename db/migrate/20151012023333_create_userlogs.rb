class CreateUserlogs < ActiveRecord::Migration
  def change
    create_table :userlogs do |t|
      t.integer :user_id
      t.string :log_data

      t.timestamps null: false
    end
  end
end
