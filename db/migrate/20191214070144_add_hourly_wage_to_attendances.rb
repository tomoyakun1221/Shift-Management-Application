class AddHourlyWageToAttendances < ActiveRecord::Migration[5.1]
  def change
    add_column :attendances, :hourly_wage, :integer
  end
end
