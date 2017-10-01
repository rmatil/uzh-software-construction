note
	description: "Summary description for {LINK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LINK

create
	make

feature
	linkTarget: STRING

	make (target : STRING)
		do
			linkTarget := target
		end

	getLink: STRING
		do
			Result := "<a href='" + linkTarget + "'>" + linkTarget + "</a>"
		end

end
