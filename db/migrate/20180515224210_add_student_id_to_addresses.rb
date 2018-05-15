class AddStudentIdToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :student_id, :integer
  end
end
