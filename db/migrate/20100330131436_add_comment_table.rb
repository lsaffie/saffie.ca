class AddCommentTable < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.datetime  :created_at
      t.text      :body
      t.integer   :post_id
    end
  end

  def self.down
    drop_table :comments
  end
end
