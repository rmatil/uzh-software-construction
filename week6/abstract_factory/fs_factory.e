note
	description: "An abstract factory for creating filesystem components."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

deferred class
	FS_FACTORY

feature

	create_file (name: STRING; size: INTEGER; is_text_file: BOOLEAN): FS_FILE
		deferred
		end

	create_folder (name: STRING): FS_FOLDER
		deferred
		end

end
