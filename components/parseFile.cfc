component output="false" hint="This parses flat files returns each line based on file extension" {

    function init() {
        return this; 
    }

    remote any function getFile ( required String fileExt, required String theFile ) returnFormat="plain" {
        
        try {
            //init the vars
            var textFile = arguments.theFile;
            var delimiter = arguments.fileExt;

            // get the parsed text to pass back to caller
            var finalstring = getNextLineTokens(textFile, delimiter);

            return finalstring;
 
        }
        catch (any e) {
            return "There was a problem reading the file."
            //writeDump(e.message);
        }

        
    } // end getFile

    remote any function getNextLineTokens (required any textFile, required string delimiter) {
        //this gets the textfile and the file delimiter and sends back - currently only accepts csv and tab
        
        if ( delimiter EQ "csv" ) { // replaces the commas with space and crlf with breaks
            var csvstring =  ListChangeDelims(textFile, chr(32), ",");
            var finalcsvstring =  replace(csvstring, chr(13)&chr(10),"<br />","all");
          return finalcsvstring;

        } else if ( delimiter EQ "tab" ) { // replaces the tabs with space and crlf with breaks
            var tabstring =  ListChangeDelims(textFile, chr(32), "#chr(9)#");
            var finaltabstring =  replace(textFile, chr(13)&chr(10),"<br />","all");
          return finaltabstring;

        } else { //file extensions can be added in the future if needed.

            return "Invalid file extension";
        }
        
    } //end getNextLineTokens 

}// end component