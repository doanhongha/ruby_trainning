class CreateCommentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    t.numeric :id_post
    t.string :content
    t.numeric :author
    t.datetime :deleted_at
    t.timestamps
    end
  end
end
