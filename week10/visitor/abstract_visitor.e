note
	description: "Summary description for {ABSTRACT_VISITOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ABSTRACT_VISITOR

feature

	-- Visit the file given
	visit_file(a_file: FS_FILE)
		deferred
		end

	-- Visit the folder given
	visit_folder(a_folder: FS_FOLDER)
		deferred
		end

	-- Visit the symbolic link given
	visit_symbolic_link(a_link: FS_SYMBOLIC_LINK)
		deferred
		end

end
