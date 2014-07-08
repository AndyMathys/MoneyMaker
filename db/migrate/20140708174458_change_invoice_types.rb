class ChangeInvoiceTypes < ActiveRecord::Migration
  def up
      change_column :invoices, :total, :decimal
  end

  def down
  end
end
