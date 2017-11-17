note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_FILE

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end


feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create folder.make("root")
			create file.make("testFile.txt", "This is some content")
		end


feature -- Test routines
	test_add_file
			-- New test routine
		note
			testing:  "covers/{FS_FILE}.make"
		do
			folder.add_entry(file)

			assert("File is not present in folder", equal(folder.entries.count, 1))

		end

feature {NONE}
	file: FS_FILE
	folder: FS_FOLDER

end


