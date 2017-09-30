note
	description: "Summary description for {DIAMOND_CHILD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DIAMOND_CHILD

inherit
	DIAMOND_INHERITOR_1
		rename
			make as inheritor1_make
		end

	DIAMOND_INHERITOR_2
		rename
			make as inherito2_make
		end

create
	make

feature
	make (childValue : STRING)
		do
			value := "Child Value: " + childValue
		end

end
