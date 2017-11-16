note
	description: "testing application root class"
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
		local
			file1: FS_FILE
			file2: FS_FILE

			folder1: FS_FOLDER
			folder2: FS_FOLDER

			link: FS_SYMBOLIC_LINK

			visitor: CONTENT_VISITOR

			contents: LIST[PAIR[STRING]]
		do
			--
			-- Filesystem structure is as follows
			--
			-- folder1
			-- 		|-- file1
			-- 		|-- folder2
			-- 				|-- file2
			--		|			  ^
			-- 		|-- link ------|
			--

			-- Let's create some files first
			create file1.make ("file1", "This is content for the first file")
			create file2.make ("file2", "This is content for the second file")

			-- Then, let's create the folders			
			create folder1.make ("folder1")
			create folder2.make ("folder2")

			-- Empty folders are boring, so let's add something to them
			folder1.add_entry (file1)
			folder2.add_entry (file2)

			-- Then, nest the second folder into the first one
			folder1.add_entry (folder2)


			-- Ok, what about links?
			-- Let's create a link pointing to the deep nested file2 (at folder1/folder2/file2)
			-- Then add it to the first folder
			create link.make ("link1", file2)
			folder1.add_entry (link)


			-- So... What's missing?
			-- We visit the entire filesystem structure and add all the
			-- contents of all files to an output strucutre, i.e. FOLDER_CONTENT
			-- We start at the root folder with visiting, i.e. folder1
			create visitor.make
			visitor.visit_folder (folder1)
			contents := visitor.get_folder_contents


			-- Now print all the contents we've got
			print ("We've found the following contents%N")
			print ("%N")

			from
				contents.start
			until
				contents.off
			loop
				print(contents.item.first)
				print(": %T")
				print(contents.item.second)
				print("%N")
				
				contents.forth
			end


			print ("%N")
			print ("Done")
		end

end
