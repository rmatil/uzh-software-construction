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
			create {LINKED_LIST [STRING]} path_elements.make
		end

feature
	-- Visit the given file
	visit_file(a_file: FS_FILE)
		local
			current_path: STRING
		do
			current_path := get_current_path
			current_path.append(a_file.name)

			folder_content.add_entry (current_path, a_file.content)
		end

	-- Visit the folder by recursively visiting all elements within the folder
	visit_folder(a_folder: FS_FOLDER)
		do
			-- Add a new path element
			path_elements.extend(a_folder.name)

			from
				a_folder.entries.start
			until
				a_folder.entries.off
			loop
				a_folder.entries.item.accept (Current)
				a_folder.entries.forth
			end

			-- Remove last path element
			if path_elements.count /= 0 then
				path_elements.finish
				path_elements.remove
			end

		end

	-- Visit the symbolic link
	visit_symbolic_link(a_link: FS_SYMBOLIC_LINK)
		do
			a_link.target.accept (Current)
		end

feature
	-- Return all file contents we've found in the folder visited
	get_folder_contents: LIST[PAIR[STRING]]
		do
			Result := folder_content.get_contents
		end


feature {NONE}
	-- All content strings we have from a file
	folder_content: FOLDER_CONTENT

	-- All current path elemets
	path_elements: LINKED_LIST[STRING]

	-- Concatenate the current path
	get_current_path: STRING
		local
			path: STRING
		do
			path := ""

			from
				path_elements.start
			until
				path_elements.off
			loop
				path.append (path_elements.item)
				path.append ("/")

				path_elements.forth
			end

			Result := path
		end

end
