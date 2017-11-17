note
	description: "Summary description for {FS_SYMBOLIC_LINK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FS_SYMBOLIC_LINK

inherit
	FS_COMPONENT

create
	make

feature
	-- Create a new symbolic link to the given target element
	make(a_name: STRING; a_target: FS_COMPONENT)
		require
			a_name.count > 0
			a_target.name.count > 0
		do
			linkName := a_name
			name := a_target.name
			target := a_target
		end


feature
	-- Return the size of the linked element
	size: INTEGER
		do
			Result := target.size
		end

	-- Return the name of the link
	linkName: STRING


feature
	-- Accept an arbitrary visitor for visiting this symbolic link
	accept(a_visitor: ABSTRACT_VISITOR)
		do
			a_visitor.visit_symbolic_link (Current)
		end


feature
	-- The target element we link to
	target: FS_COMPONENT

end
