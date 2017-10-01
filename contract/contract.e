note
	description: "Summary description for {CONTRACT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CONTRACT

feature
	divide (dividend : INTEGER; divisor : INTEGER): DOUBLE
		require
			divide_by_zero: divisor /= 0
		do
			Result := dividend / divisor
		end

end
