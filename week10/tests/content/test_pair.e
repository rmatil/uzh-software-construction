note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_PAIR

inherit
	EQA_TEST_SET

feature -- Test routines

	test_make_01
			-- New test routine
		note
			testing:  "covers/{PAIR}.make"
		local
			pair: PAIR[STRING]
		do
			create pair.make("first", "second")

			assert ("First should be equal", equal(pair.first, "first"))
			assert ("Second should be equal", equal(pair.second, "second"))
		end

end


