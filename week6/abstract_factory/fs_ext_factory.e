note
	description: "A factory for creating EXT filesystem components."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

class
	FS_EXT_FACTORY

inherit
	FS_FACTORY

create
	default_create

feature

	create_file (name: STRING; size: INTEGER; is_text_file: BOOLEAN) : FS_FILE
		local
			last_created_file: FS_EXT_FILE
		do
			create last_created_file.make (name, size, is_text_file)
			Result := last_created_file
		end

	create_folder (name: STRING) : FS_FOLDER
		local
			last_created_folder: FS_EXT_FOLDER
		do
			create last_created_folder.make (name)
			Result := last_created_folder
		end

end
