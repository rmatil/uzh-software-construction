class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			folder: FS_FOLDER
			file: FS_FILE
		do
			create folder.make ("Folder 1");
			create file.make("File 1");
			folder.add_entry (file);
		end

end
