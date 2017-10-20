note
	description: "A component in a filesystem."
	author: "Stephan van Staden"
	date: "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision: "$Revision: 135 $"

deferred class
	FILESYSTEM_COMPONENT

feature

	name: STRING

	size: INTEGER
		deferred
		end

	accept (a_visitor: VISITOR)
		deferred
		end

end
