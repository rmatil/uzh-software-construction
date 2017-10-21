note
	description: "An EXT file."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

class
	FS_EXT_FILE

inherit
	FS_FILE

create
	make

feature

	make (a_name: STRING; a_size: INTEGER; a_is_text_file: BOOLEAN)
		do
			name := a_name
			size := a_size
			is_text_file := a_is_text_file
		end

end
