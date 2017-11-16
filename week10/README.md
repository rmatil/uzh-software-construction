Week 10
=======

This project demonstrates the effect of having elements which
may be arbitrary linked by leveraging the concept of a filesystem.

Therefore, the folder `filesystem` contains all classes required to 
emulate a working filesystem:

* `FS_COMPONENT`: The abstract (i.e. deferred) class for all components on the filesystem
* `FS_FILE`: A file on the filesystem. Has a content as well as a name and a size
* `FS_FOLDER`: A folder on the filesystem. Has an arbitrary amount of children of type `FS_COMPONENT`. 
* `FS_SYMBOLIC_LINK`: A link to another component on the filesystem

The folder `visitor` contains the principle of the Visitor Pattern:

* `ABSTRACT_VISITOR`: The base class for all visitors
* `CONTENT_VISITOR`: The concrete visitor (inheriting from `ABSTRACT_VISITOR`), traversing a filesystem and storing all file contents found.

Eventually, the folder `content` holds two objects in order to store the file contents in the `CONTENT_VISITOR`:

* `FOLDER_CONTENT`: A class having a list of `PAIR`s which holds as first element the path to the file, and as second element its content
* `PAIR`: A generic class for holding a first and a second element in conjunction.

# Usage

Clone this repo. Then open the project in EiffelStudio by using `testing.ecf`.
Compile and run the application. You should get an output as follows:

```
We've found the following contents

folder1/file1:  This is content for the first file
folder1/folder2/file2:  This is content for the second file
folder1/file2:  This is content for the second file

Done
```

# Tests

Not yet implemented
