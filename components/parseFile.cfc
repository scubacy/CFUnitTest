component output="false" hint="This parses flat files returns each line based on file extension" {

    function init() {
        return this; 
    }

    remote any function getFile ( required String fileExt, required String theFile ) returnFormat="plain" {
        
        try {
            //init the vars
            var textFile = arguments.theFile;
            var delimiter = arguments.fileExt;
            var csvstring = "";
            var tabstring = "";



            if ( delimiter EQ "csv" ) {
                csvstring =  ListChangeDelims(theFile, "<br/>", ",");
              return csvstring;
            } else if ( delimiter EQ "tab" ) {
                tabstring =  ListChangeDelims(theFile, "<br/>", "#chr(9)#");
              return tabstring;
            } else {
                return "Invalid file extension"
            }

 
        }
        catch (any e) {
            //return "There was a problem reading the file."
            writeDump(e.message);
        }

        return 

        
    } // end getFile

    remote any function getNextLineTokens (required any textFile, required string delimiter) {

        
        
    } //end getNextLineTokens 

}// end component