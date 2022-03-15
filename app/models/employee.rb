class Employee < ApplicationRecord
  validates :first_name, :last_name, :contact, :email, presence: true
end
