class
	REDEFINE_CHILD

inherit
	REDEFINE_PARENT
		redefine
			greet
	end

feature
	greet
		do
			Precursor -- Invoke parent procedure with the same name
			io.put_string ("huhu")
		end

end
