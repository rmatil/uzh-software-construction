# uzh-software-construction
This repository holds various snippets of Eiffel in order to illustrate particular concepts I explained in the UZH course Software Construction.
See the different available Tags for each of these concepts.

We link to another remote repository

## Structure
The following sections describe the repository structure.
*Note*: Use the `.ecf` files for importing the projects into EiffelStudio. Alternatively, you may create a new EiffelStudio project and add the sources there.

### Week 1-5
This EiffelStudio project holds snippets for the basic operations which can be achieved in Eiffel. 
You'll find folders for:

* *Contract*: An implementation of a contract
* *Polymorhpism*: An example introducing inheritance and polymorphism
* *Redefine*: An example showing how you can redefine certain procedures
* *Diamond Problem*: An example on what can happen if a language provides multiple inheritance, i.e. requires for renaming resp. redeclaring of procedures

*Note* that you have to switch between tags to get the corresponding correct implementation in `application.e`.


### Week 6
This folder contains multiple, different projects on Design Patterns. 
You'll find projects for:

* *Composite*: An EiffelStudio project showing an example of the Composite Pattern.
* *Visitor*: An EiffelStudio project showing the visitor pattern using a tree structure of Filesystem Components.
* *Abstract Factory*: An implementation showing the usage of the different components involved in the Abstract Factory.

*Note* that you have to import each subfolder within `week6` as dedicated project into EiffelStudio. Use the `.ecf` files within the folders for this purpose.

### Week 10
This folder contains a complete example of a filesystem, using a `Composite` Pattern in order to create its structure, as well as a `Visitor` to traverse it.
Further, it illustrates the concept of linking between instances of objects.

Eventually, it contains Unit Tests for two classes. Have a look at the folder `test`.

**Note**: _It is possible to create links which do cause infinite loops while generating output, e.g. a link pointing to its parent element. 
This was primarily used within the exercise session._


### Week 11
As of now, contains an example of how you can find out the type of an exception.
It provides an `EXCEPTION_ASSERTER` which inherits from `EXCEPTION_MANAGER_FACTORY` which in turn allows us to have 
a granular look at what kind of exceptions were thrown and provides further utilities in the context of exceptions.

## Installation

* Clone this repository by running `git clone git@github.com:rmatil/uzh-software-construction.git`
* You may switch back and forth between the different tags using `git checkout <tag name>`. You can obtain a list of available tags by running `git tag` on your command line

## EiffelStudio
In order to look at these code samples, open EiffelStudio and add this as a new project. Use the `software-construction.ecf` file as project target since it holds all necessary information about it.
