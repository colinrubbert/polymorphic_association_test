class RemoveAdmissionReferenceFromClient < ActiveRecord::Migration[6.0]
  def change
    remove_reference :clients, :admission, index: true, foreign_key: true
  end
end
