note
	description: "Summary description for {ITEM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ITEM

create
	make

feature
	value : STRING
		-- the variable holding the value of the item

	make (content : STRING)
	  	-- intialize the item using the given content
		do
			value := content
		end

	get_value : STRING
		-- returns the value of this item
		do
			Result := value
		end
end
