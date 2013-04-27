class Resource < ActiveRecord::Base
	attr_accessible :name, :url, :description
  belongs_to :user
end
