class Shirt < ActiveRecord::Base
  validates :name, :color, presence: true
end
