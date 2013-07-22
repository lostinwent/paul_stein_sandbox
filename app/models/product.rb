class Product < ActiveRecord::Base
  attr_accessible :description, :name, :on_sale, :price_in_cents

  validates :description, :name, :price_in_cents, :presence => true
  validates :price_in_cents, :numericality => { :only_integer => true }


  def display_price
    price_in_dollars = price_in_cents.to_f / 100
    sprintf('$%.2f', price_in_dollars)
  end

end
