class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
	child : REDEFINE_CHILD

	make
			-- Run application.
		do
			create child
			-- Expected output?
			child.greet

		end
end
