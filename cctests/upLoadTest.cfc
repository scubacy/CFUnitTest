component displayName="Test the csv uploads" extends="testbox.system.BaseSpec" {

	function setup( currentMethod ) {
		// set this file extension
		variables.validfileExt = "csv,tab";
        variables.thisFileExt = "txt";

		/*var parsedObj = new components.parseFile();
        var parsedText = parsedObj.getFile (fileExt = thisFileExt, theFile = thisFile); */
	}

	function testExtension () {
		var something = true;
		var thisFile =  expandPath("./");

		$assert.isTrue( something );
		writeOutput( "Testing valid file #thisFile# " );
		writeDump(variables.thisFileExt);

	}



	function tearDown( currentMethod ) {
		WriteOutput("End file extension test using .");
	}
}
