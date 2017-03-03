class CreateEventsOrders < ActiveRecord::Migration
  def change
    create_table :events_orders do |t|
      t.belongs_to :event, index: true
      t.belongs_to :order, index: true
    end
  end
end
