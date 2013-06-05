class Order < ActiveRecord::Base
  belongs_to :lunch
  belongs_to :user
end
