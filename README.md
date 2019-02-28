clearCapitolTest
Applicant Cyrus Horne : created 2/29/2019

## BEGIN INSTRUCTIONS

 Demonstrate Use of Files, Strings and
 Simple Patterns In ColdFusion or other OO language of choice
 ### Hypothetical Technical Requirement:

Create a ColdFusion component that is able to read the next line from a text file and return a list of strings that represent each tab-delimited token that it reads from the file.  For example, given the following file contents:

This 'tab' is 'tab' a 'tab' test
red 'tab' green 'tab' blue

The first call to a getNextLineTokens method of this new component would return a list of strings that includes "This", "is, "a" and "test".  The second call would return "red", "green" and "blue".  A third call should return null.

Since we anticipate eventually parsing other types of files (ex: Comma separated, fixed length fields, etc.), the solution should be extensible to allow for that growth.  For this project, you should assume that your solution will be one component of a larger system and should take into consideration organization and documentation for other developers on the team, as well as technical factors such as varying input data.  This is an opportunity to demonstrate your design and development skills.

Determining which parser type to use should be based on the extension of the filename submitted.  In this case, files of type “*.tab” will be processed by the newly created component.

In addition to the ColdFusion implementation, please provide some simple tests that demonstrate success and error cases using the unit testing framework of your choice or a web page containing tests.
