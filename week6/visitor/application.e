indexing
	description : "Design pattern exercise, Question 2."
	date        : "$Date: 2010-03-26 13:31:00 +0100 (Fri, 26 Mar 2010) $"
	revision    : "$Revision: 135 $"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			documents, manuscripts: FS_FOLDER
			email_list, article, report: FS_FILE
			count_visitor: TEXTFILE_COUNT_VISITOR
		do
			create documents.make ("Documents")
			create manuscripts.make ("Manuscripts")
			documents.add_entry (manuscripts)

			create email_list.make ("emails.txt", 50, True)
			documents.add_entry (email_list)

			create article.make ("article.txt", 100, True)
			manuscripts.add_entry (article)
			create report.make ("report.pdf", 50, False)
			manuscripts.add_entry (report)

			io.put_string ("Size of Documents: " + documents.size.out + "%N")

			create count_visitor
			documents.accept (count_visitor)
			io.put_string ("Number of text files in Documents: " + count_visitor.textfile_count.out)
		end

end
