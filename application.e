note
	description: "html-generator application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
	parent : DIAMOND_PARENT
	inheritor1 : DIAMOND_INHERITOR_1
	inheritor2 : DIAMOND_INHERITOR_2
	child : DIAMOND_CHILD

	make
			-- Run application.
		do
			--| Add your code here
			create parent.make("value1")
			create inheritor1.make ("value2")
			create inheritor2.make ("value3")
			create child.make ("value4")

			-- polymorhpism
			parent := child
			-- parent is actually the child: Expected value of output?
			io.put_string (parent.value)

		end
end
