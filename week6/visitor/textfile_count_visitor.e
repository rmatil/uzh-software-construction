note
	description: "A visitor that counts the number of text files in a filesystem."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

class
	TEXTFILE_COUNT_VISITOR

inherit
	VISITOR

create
	default_create

feature

	visit_file (a_file: FS_FILE)
		do
			if a_file.is_text_file then
				textfile_count := textfile_count + 1
			end
		end

	visit_folder (a_folder: FS_FOLDER)
		do
			from
				a_folder.entries.start
			until
				a_folder.entries.off
			loop
				a_folder.entries.item.accept (Current)
				a_folder.entries.forth
			end
		end

	textfile_count: INTEGER

end
