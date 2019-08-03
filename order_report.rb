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
end	