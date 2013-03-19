class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenterid
      t.string :body
      t.datetime :ctime
      t.string :comment_id,:default => 0
      # t.references :weibo
      t.timestamps
      t.string :weibo_id
    end
    # add_index :comments, :weibo_id
  end
end
