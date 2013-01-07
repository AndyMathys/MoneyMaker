class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :partner_id
      t.string :description
      t.integer :total
      t.integer :vat
      t.date :creation_date
      t.date :payment_date
      t.integer :number

      t.timestamps
    end
  end
end
