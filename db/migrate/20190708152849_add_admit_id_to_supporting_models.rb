class AddAdmitIdToSupportingModels < ActiveRecord::Migration[6.0]
  def change
    add_reference :legals, :admit, index: true, polymorphic: true
    add_reference :notes, :admit, index: true, polymorphic: true
  end
end
