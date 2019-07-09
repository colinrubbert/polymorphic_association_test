class Admission < ApplicationRecord
  belongs_to :admit, polymorphic: true
  belongs_to :client
end
