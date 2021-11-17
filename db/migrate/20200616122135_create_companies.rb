class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :add
      t.decimal :mobile
      t.decimal :alternate_mobile
      t.string :email
      t.string :alternate_email

      t.timestamps
    end
  end
end
