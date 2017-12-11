note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HELLO

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			-- Initializie our exception asserter
			create exception_asserter

		end

feature -- Test routines

	exception_asserter: EXCEPTION_ASSERTER

	test_make_01
			-- Test, that a particular precondition actually failed.
		note
			testing:  "covers/{HELLO}.make"
		local
			hello: HELLO
		do
			-- This will trigger a precondition violation.
			create hello.make (0)

		rescue
			print("Was this a precondition violation? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)

			-- Question: Why is the test still failing?
		end

end


