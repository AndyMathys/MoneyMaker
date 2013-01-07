class Invoice < ActiveRecord::Base
  belongs_to :partner
  attr_accessible :creation_date, :description, :number, :partner_id, :payment_date, :total, :vat
end
