note
	description: "Summary description for {DIAMOND_PARENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DIAMOND_PARENT

create
	make

feature { ANY }

	value: STRING -- The value of the parent

	make (parentValue: STRING)
		-- initialize the value of the parent
		do
			value := parentValue
		end

end
