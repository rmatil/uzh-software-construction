class
	DIAMOND_INHERITOR_1

inherit
	DIAMOND_PARENT
		rename
			make as diamond_parent_make
		end

create
	make

feature {ANY}

	make (inheritor1Value : STRING)
			-- Initialization for `Current'.
		do
			value := "Inheritor 1: " + inheritor1Value
		end

end
