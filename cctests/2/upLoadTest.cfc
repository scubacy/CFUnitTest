component displayName="Test a good file extension" extends="testbox.system.BaseSpec" {

	function setup( currentMethod ) {
		// set valid file extension
		variables.validfileExt = "csv,tab";        
	}

	function testParseText () {
		var thisFileExt = "csv"; // our test file extension
		var thisFile = "This,is,line,1 
		this,is,line,2"; // this is hardcoded for quick test, could be pulled from file location

		//is the file extension in the list of valid extensions?
		$assert.isTrue( ListFindNoCase(variables.validfileExt, thisFileExt) );		

		//call the parseFile obj
		var parsedObj = new components.parseFile();
        var parsedText = parsedObj.getFile (fileExt = thisFileExt, theFile = thisFile);

		writeOutput( "ParseFile output: <br/>" );
		writeOutput( parsedText );

	}


	function tearDown( currentMethod ) {
		WriteOutput("<br/><strong> ...END TEST... <strong>");
	}
}
