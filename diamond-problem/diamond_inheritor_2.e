class
	DIAMOND_INHERITOR_2

inherit
	DIAMOND_PARENT
		rename
			make as diamond_parent_make
		end

create
	make

feature {ANY}

	make (inheritor2Value : STRING)
			-- Initialization for `Current'.
		do
			value := "Inheritor 2: " + inheritor2Value
		end

end
