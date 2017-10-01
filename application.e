class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
	contract : CONTRACT

	make
			-- Run application.
		do
			create contract
			-- contract violation: division by zero
			io.put_double (contract.divide(2, 0))
		rescue
			io.put_string ("we got an error but we ignore it")
		end
end
