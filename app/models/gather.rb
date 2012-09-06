class Gather < ActiveRecord::Base
  attr_accessible :description, :end_date, :location, :price, :start_date, :time, :title, :user_id
end
