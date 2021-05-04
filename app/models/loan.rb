class Loan < ApplicationRecord
  belongs_to :person
  has_many :deliveries
end
