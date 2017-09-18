note
	description: "Summary description for {UNORDEREDLIST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	UNORDEREDLIST

create
	make

feature
	elements: LINKED_LIST[ITEM]
		-- the elements of the unordered list

	make
		-- initialize the inner list containing all our items
		do
			create elements.make
		end


	add_element ( element : ITEM)
			-- Add a new element
		do
			elements.put_right(element)
			elements.forth
		end

	get_html : STRING
			-- returns the html for each list
		local
			html : STRING
		do
			html := "<ul>"

			from
				elements.start
			until
				elements.exhausted
			loop
				html := html + "<li>" + elements.item.get_value() + "</li>"
				elements.forth
			end

			html := html + "</ul>"

			Result := html
		end

end
