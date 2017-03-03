class Event < ActiveRecord::Base
  belongs_to :contact
  belongs_to :order
  has_and_belongs_to_many :orders
end
