class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title, :content
    	t.references :user
      t.timestamps
    end
  end
end
