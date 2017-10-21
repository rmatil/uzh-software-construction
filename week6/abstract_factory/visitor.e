note
	description: "A visitor for visiting filesystem elements."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

deferred class
	VISITOR

feature

	visit_file (a_file: FS_FILE)
		deferred
		end

	visit_folder (a_folder: FS_FOLDER)
		deferred
		end

end
