class AddSalesTaxAndServiceFeeAndTotalToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :sales_tax, :decimal
    add_column :invoices, :service_fee, :decimal
    add_column :invoices, :total, :decimal
  end
end
