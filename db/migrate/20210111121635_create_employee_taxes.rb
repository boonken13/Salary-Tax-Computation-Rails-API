class CreateEmployeeTaxes < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_taxes do |t|
      t.string :employee_name
      t.numeric :annual_salary
      t.numeric :monthly_income_tax

      t.timestamps
    end
  end
end
