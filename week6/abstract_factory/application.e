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
			factory: FS_FACTORY
			documents, manuscripts: FS_FOLDER
			email_list, article, report: FS_FILE
			count_visitor: TEXTFILE_COUNT_VISITOR
		do
				-- Change FS_EXT_FACTORY to FS_NTFS_FACTORY to build up a different file system.
			create {FS_EXT_FACTORY} factory

			factory.create_folder ("Documents")
			documents := factory.last_created_folder
			factory.create_folder ("Manuscripts")
			manuscripts := factory.last_created_folder
			documents.add_entry (manuscripts)

			factory.create_file ("emails.txt", 50, True)
			email_list := factory.last_created_file
			documents.add_entry (email_list)

			factory.create_file ("article.txt", 100, True)
			article := factory.last_created_file
			manuscripts.add_entry (article)
			factory.create_file ("report.pdf", 50, False)
			report := factory.last_created_file
			manuscripts.add_entry (report)

			io.put_string ("Size of Documents: " + documents.size.out + "%N")

			create count_visitor
			documents.accept (count_visitor)
			io.put_string ("Number of text files in Documents: " + count_visitor.textfile_count.out)
		end

end
