class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :events
  validates_formatting_of :zip_code, using: :us_zip
end
