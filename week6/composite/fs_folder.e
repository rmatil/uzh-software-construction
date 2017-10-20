note
	description: "A filesystem folder."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

class
	FS_FOLDER

inherit
	FILESYSTEM_COMPONENT

create
	make

feature

	make(n: STRING)
	do
		name := n;
		create entries.make;
	end

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

	add_entry (fc: FILESYSTEM_COMPONENT)
		do
			entries.extend (fc)
		end

feature {NONE}

	entries: LINKED_LIST [FILESYSTEM_COMPONENT]

end
