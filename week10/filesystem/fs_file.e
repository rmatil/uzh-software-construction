note
	description: "Summary description for {FS_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FS_FILE

inherit
	FS_COMPONENT

create
	make


feature
	-- Create a new file
	make (a_name: STRING; a_content: STRING)
		require
			a_name.count > 0
		do
			name := a_name
			content := a_content
			size := a_content.count
		end


feature
	-- Return the size of this file
	size: INTEGER

	-- Return the content of this file
	content: STRING


feature
	-- Accept a visitor for visiting this fil
	accept(a_visitor: ABSTRACT_VISITOR)
		do
			a_visitor.visit_file (Current)
		end

invariant
	size = content.count


end
