class Legal < ApplicationRecord
  has_many :admissions, as: :admit, dependent: :destroy
  has_one :client, through: :admissions
end
