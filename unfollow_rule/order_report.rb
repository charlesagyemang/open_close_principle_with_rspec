class OrderReport
	def initialize(customer, total)
		@customer = customer
		@total = total
	end

	def get_customer
		@customer
	end

	def get_total
		@total
	end

	def invoice
		puts "Customer: #{@customer} Cost: #{@to}"
	end

	def bill_of_lading
		puts "Shipping Manifest For #{@customer}"
	end
end	