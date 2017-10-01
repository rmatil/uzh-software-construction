note
	description: "Summary description for {EXTERNAL_LINK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EXTERNAL_LINK

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
			Result := "<a href='" + linkTarget + "' target='_blank'>" + linkTarget + "</a>"
		end

end
