note
	description: "Summary description for {FS_COMPONENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	FS_COMPONENT

feature

	-- The naem of the component
	name: STRING

	-- The size of the component
	size: INTEGER
		deferred
		end

	-- Accept any arbitrary visitor inheriting from ABSTRACT_VISITOR
	accept(a_visitor: ABSTRACT_VISITOR)
		deferred
		end

end
