class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :state
      t.decimal :price, :precision => 8, :scale => 2
      t.timestamps null: false
    end
  end
end
