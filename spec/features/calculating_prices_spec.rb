describe 'calculating price for an invoice' do
  before { visit root_path }
  before { submit_invoice_form state: 'CA', subtotal: 100 }

  it { expect(page).to have_content 'Sales Tax: $10.00' }
  it { expect(page).to have_content 'Service Fee: $25.00' }
  it { expect(page).to have_content 'Total: $135.00' }

  def submit_invoice_form state: nil, subtotal: nil
    select state, from: 'invoice_state'
    fill_in 'invoice_price', with: subtotal
    click_button 'Submit'
  end
end