class CreateTagsTable < ActiveRecord::Migration[5.1]
  def change
	create_table :tags do |t|
	   t.string :name
	   t.datetime :deleted_at

	   t.timestamps
    end
  end
end
