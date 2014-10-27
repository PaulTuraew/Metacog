class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :co_name

      t.timestamps
    end
  end
end
