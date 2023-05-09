class Tenant < ApplicationRecord
  has_many :leases
  has_many :apartments, through: :leases
  validates: :name, presence :true
  validates: :age, comparison: { greater_than_or_equal_to: 18 }, numericality: { only_integer: true }
end
