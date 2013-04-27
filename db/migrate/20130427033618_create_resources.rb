class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
    	t.string :name, :url, :description
    	t.references :user
      t.timestamps
    end
  end
end
