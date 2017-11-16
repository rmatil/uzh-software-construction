note
	description: "Summary description for {CONTENT_VISITOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CONTENT_VISITOR
inherit
	ABSTRACT_VISITOR

create
	make

feature
	make
		do
			create folder_content.make
		end

feature
	-- Visit the given file
	visit_file(a_file: FS_FILE)
		do
			folder_content.add_entry (a_file.content)
		end

	-- Visit the folder by recursively visiting all elements within the folder
	visit_folder(a_folder: FS_FOLDER)
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

	-- Visit the symbolic link
	visit_symbolic_link(a_link: FS_SYMBOLIC_LINK)
		do
			a_link.target.accept (Current)
		end

feature
	get_folder_contents: LIST[STRING]
		do
			Result := folder_content.get_contents
		end


feature {NONE}
	-- All content strings we have from a file
	folder_content: FOLDER_CONTENT

end
