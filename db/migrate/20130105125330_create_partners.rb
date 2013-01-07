class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :vat
      t.string :bankaccount

      t.timestamps
    end
  end
end
