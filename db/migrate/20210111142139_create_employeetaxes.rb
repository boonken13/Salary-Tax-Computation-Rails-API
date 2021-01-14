class CreateEmployeetaxes < ActiveRecord::Migration[6.1]
  def change
    create_table :employeetaxes do |t|
      t.string :employee_name
      t.string :annual_salary
      t.string :monthly_income_tax

      t.timestamps
    end
  end
end
