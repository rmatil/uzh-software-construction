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
	item_list : UNORDEREDLIST
	item : ITEM

	make
			-- Run application.
		local
			item2 : ITEM
		do
			--| Add your code here
			io.put_string ("Hello Eiffel World! We will print a list %N")

			create item.make("myValue1")
			create item2.make ("mysecondvalue")
			create item_list.make

			item_list.add_element(item)
			item_list.add_element (item2)

			io.put_string (item_list.get_html())

		end
end
