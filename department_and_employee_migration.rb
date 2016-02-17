class DepartmentsAndEmployeesMigration < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.boolean :satisfactory
      t.decimal :salary, precision: 8, scale: 2
      t.references :departments
      t.timestamps null: false
    end

    create_table :reviews do |t|
      t.text :review
      t.references :employees
      t.timestamps null: false
    end
  end
end
