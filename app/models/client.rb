class Client < ApplicationRecord
  has_many :admissions, dependent: :destroy
  has_many :legals, through: :admissions, source: :admit, source_type: "Legal"
  has_many :notes, through: :admissions, source: :admit, source_type: "Note"
end
