note
	description: "An NTFS folder."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

class
	FS_NTFS_FOLDER

inherit
	FS_FOLDER

create
	make

feature

	make (a_name: STRING)
		do
			name := a_name
			create {LINKED_LIST [FILESYSTEM_COMPONENT]} entries.make
		end

end
