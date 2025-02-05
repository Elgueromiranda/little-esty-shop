require 'rails_helper'

RSpec.describe Item do
  describe "Relationships" do
    it {should belong_to :merchant} 
    it {should have_many :invoice_items} 
    it {should have_many(:invoices).through(:invoice_items)} 
    it {should have_many(:customers).through(:invoices)}
  end
end