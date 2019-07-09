class RemoveTypeIdFromLegalNote < ActiveRecord::Migration[6.0]
  def change
    remove_reference :legals, :admit, index: true, polymorphic: true
    remove_reference :notes, :admit, index: true, polymorphic: true
  end
end
