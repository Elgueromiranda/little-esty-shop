require 'rails_helper'

RSpec.describe Merchant do
  describe "Relationships" do
    it {should have_many :items} 
    it { should have_many(:invoices).through(:items) }
  end
end