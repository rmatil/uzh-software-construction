note
	description: "Summary description for {PAIR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PAIR[G]

create
	make

feature
	-- Create a new pair with a first and a second element
	make (a_first: G; a_second: G)
		do
			first := a_first
			second := a_second
		end

feature
	-- Return the first element of the pair
	first: G

	-- Return the second element of the pair
	second: G

end
