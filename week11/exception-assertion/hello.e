note
	description: "Summary description for {HELLO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HELLO

create
	make

feature

	int: INTEGER

	make (a_integer: INTEGER)
		require
			a_integer > 0
		do
			int := a_integer
		end

end
