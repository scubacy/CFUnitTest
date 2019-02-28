component output="false" hint="This parses flat files uploaded and returns each line based on separators" {

    function init() {
        return this; 
    }

    remote any function getFileMain ( String parseFile ) returnFormat="any" returnType="plain" output="false" {
        var thisfileName = fileRead('C:\Users\cyrus\clearCapitol\filestoParse\test1.csv')
    writeDump(thisfileName); 
    abort;
        return "All is well"
    } // end getFile

}// end component