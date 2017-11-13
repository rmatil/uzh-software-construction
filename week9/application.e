note
	description: "file-output application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
        	create dir.make ("directory")
        	dir.create_dir()

        end

feature -- Access

    dir: DIRECTORY

end
