note
	description: "week11 application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE}

	make
		local
			-- This is a helper being able to check types of exceptions	
			exception_asserter: EXCEPTION_ASSERTER
		do

			-- Throw a new exception
			-- Play with either 0 or 1 to cause exceptions
			throw_exception_if_zero_or_one(0)

		rescue
			-- Initializie our exception asserter
			create exception_asserter
			print("Was this a precondition violation? %N")
			print(exception_asserter.is_precondition_violated)

		end


	throw_exception_if_zero_or_one (a_int: INTEGER)
		-- Throw an precondition violation if given int is equal to 0
		-- and a postcondition violation if given a 1
		require
			a_int /= 0
		do
			-- noop
		ensure
			a_int /= 1
		end

end
