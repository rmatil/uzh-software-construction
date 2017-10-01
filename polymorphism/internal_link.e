note
	description: "Summary description for {INTERNAL_LINK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTERNAL_LINK

inherit
	LINK
		redefine
			getLink
	end

create
	make

feature

	getLink: STRING
		do
			Result := "<a href='" + linkTarget + "' target='_self'>" + linkTarget + "</a>"
		end

end
