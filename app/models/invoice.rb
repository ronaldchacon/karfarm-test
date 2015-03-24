class Invoice < ActiveRecord::Base

  validates :price, presence: true

  before_save :calculate_sales_tax, :calculate_service_fee, :calculate_total

  private

    def calculate_sales_tax
      self.sales_tax = price * 0.1
    end

    def calculate_service_fee
      self.service_fee = (price / 0.8) - price
    end

    def calculate_total
      self.total = price + (price * 0.1) + ((price / 0.8) - price)
    end
end
