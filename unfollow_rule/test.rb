require 'rspec'
require './order_report.rb'

describe 'Order Report' do

	it 'should create successfully' do
		order_report = OrderReport.new("customer", 10.00)
		expect(order_report.get_customer).to eq("customer")	
	end

	it 'should have an invoice method to print invoices' do
		order_report = OrderReport.new("customer", 10.00)
		expect(order_report).to respond_to(:invoice)	
	end

	it 'should have a bill of laden method' do
		order_report = OrderReport.new("customer", 10.00)
		expect(order_report).to respond_to(:bill_of_lading)	
	end


end