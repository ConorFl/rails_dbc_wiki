class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|
    	t.string :name, :address, :description
    	t.references :user
      t.timestamps
    end
  end
end
