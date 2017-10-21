note
	description: "A factory for creating NTFS filesystem components."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

class
	FS_NTFS_FACTORY

inherit
	FS_FACTORY

create
	default_create

feature

	create_file (name: STRING; size: INTEGER; is_text_file: BOOLEAN)
		do
			create {FS_NTFS_FILE} last_created_file.make (name, size, is_text_file)
		end

	create_folder (name: STRING)
		do
			create {FS_NTFS_FOLDER} last_created_folder.make (name)
		end

end
