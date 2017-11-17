note
	description: "Summary description for {FS_FOLDER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FS_FOLDER

inherit
	FS_COMPONENT

create
	make

feature
	-- Create a new folder
	make (a_name: STRING)
		require
			a_name.count > 0
		do
			name := a_name
			create {LINKED_LIST [FS_COMPONENT]} entries.make
		end


feature
	-- Returns the total size of all FS_COMPONENTS within this flder
	size: INTEGER
		do
			Result := 0
			from
				entries.start
			until
				entries.off
			loop
				Result := Result + entries.item.size
				entries.forth
			end
		end

	-- Add a new entry to this folder
	add_entry (fc: FS_COMPONENT)
		do
			entries.extend (fc)
		ensure
			entries.count = old entries.count + 1
		end


feature
	-- Accept a visitor for visiting this folder
	accept(a_visitor: ABSTRACT_VISITOR)
		do
			a_visitor.visit_folder (Current)
		end


feature
	-- The folder entries
	entries: LIST [FS_COMPONENT]

end
