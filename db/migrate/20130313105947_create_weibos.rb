class CreateWeibos < ActiveRecord::Migration
  def change
    create_table :weibos do |t|
      t.string :userid
      t.string :content
      t.datetime :ctime
      t.integer :wtype
      t.integer :flag

      t.timestamps
    end
  end
end
