class CreatePostTagsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :post_tags do |t|
    t.numeric :id_post
    t.numeric :id_tag
    t.datetime :deleted_at
    t.timestamps
    end
  end
end
