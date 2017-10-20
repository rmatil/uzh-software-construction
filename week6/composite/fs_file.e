class
	FS_FILE

inherit
	FILESYSTEM_COMPONENT

create make

feature

	make(n: STRING)
	do
		name := n;
	end

	size: INTEGER

end
