require 'rspec'
require './order_report.rb'
require './bill_of_lading.rb'
require './invoice.rb'

describe 'Order Report' do

	it 'should create successfully' do
		order_report = OrderReport.new("customer", 10.00)
		expect(order_report.get_customer).to eq("customer")	
	end

	it 'should have an invoice method to print invoices' do
		order_report = OrderReport.new("customer", 10.00)
		expect(order_report).not_to respond_to(:invoice)	
	end

	it 'should have a bill of laden method' do
		order_report = OrderReport.new("customer", 10.00)
		expect(order_report).not_to respond_to(:bill_of_lading)	
	end

	it 'should print the invoice using the invoice class' do
		invoice = Invoice.new("customer", 10.00)
		expect(invoice.print_out).to eq(10.00)
	end 

	it 'should print the bill of lading using the bill of lading class' do
		bill_of_lading = BillOfLading.new(customer: "customer", total: 10.00, address: "Adresse")
		expect(bill_of_lading.print_out).to eq("Adresse")
	end 

end