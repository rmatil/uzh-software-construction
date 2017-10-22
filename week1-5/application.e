class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
	link : LINK
	externalLink : EXTERNAL_LINK
	internalLink : INTERNAL_LINK

	make
		do
			create link.make("a link")
			create externalLink.make("www.google.com")
			create internalLink.make("/home")

			-- Expected output?
			io.put_string (link.getLink() + "%N")

			-- polymorphism: we can assign a child to its parent
			link := externalLink
			io.put_string (link.getLink() + "%N")

			link := internalLink
			io.put_string(link.getLink() + "%N")

		end
end
