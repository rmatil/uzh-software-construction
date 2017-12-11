note
	description: "Summary description for {EXCEPTION_ASSERTER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EXCEPTION_ASSERTER

inherit
	-- Inherit from an exception manager to access information
	-- about exceptions thrown.
	EXCEPTION_MANAGER_FACTORY

feature

	is_precondition_violated: BOOLEAN
		-- Returns true, if the last exception was a precondition violation, false otherwise.
		do
			if attached {EXCEPTION} exception_manager.last_exception as e and
				then attached {PRECONDITION_VIOLATION} e.original as p then
				Result := True
			else
				Result := False
			end
		end
end
