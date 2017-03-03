class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.date :date
      t.text :message
      t.text :signature
      t.references :contact, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
