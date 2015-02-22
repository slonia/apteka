class SubGroup < ActiveRecord::Base
  belongs_to :group
  has_many :products
end
