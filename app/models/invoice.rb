class Invoice < ActiveRecord::Base
  belongs_to :partner
  attr_accessible :creation_date, :description, :number, :partner_id, :payment_date, :total, :vat

  def number_of_days
      payment_date.mjd - creation_date.mjd
  end

  def vat_amount
     total * Float(vat) / 100 
  end

  def total_amount
    '%.2f' % (total * (1.00 +  Float(vat) / 100))
  end
end
