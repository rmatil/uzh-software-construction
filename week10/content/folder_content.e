note
	description: "Summary description for {FOLDER_CONTENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FOLDER_CONTENT

create
	make

feature
	-- Initialize the contents
	make
		do
			create {LINKED_LIST [STRING]} entries.make
		end

	-- Add a new content
	add_entry(a_content: STRING)
		do
			entries.extend (a_content)
		end

	-- Get all content
	get_contents: LIST[STRING]
		do
			Result := entries
		end

feature {NONE}
	entries: LIST[STRING]


end
