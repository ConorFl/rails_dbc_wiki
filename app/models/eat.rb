class Eat < ActiveRecord::Base
  attr_accessible :name, :address, :description
  belongs_to :user
end
