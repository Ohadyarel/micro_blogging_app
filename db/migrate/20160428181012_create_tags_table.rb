class CreateTagsTable < ActiveRecord::Migration
  def change
  	create_table :tags do |t|
  		t.integer :user_id
  	end
  end
end
