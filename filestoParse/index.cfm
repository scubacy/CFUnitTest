
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Clear Capitol - File manipulation</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="/">CLEAR CAPITOL</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
  
        <cfif StructKeyExists(FORM, "parseFile") AND StructKeyExists(FORM, "fileExt")>
          <cfset thisFile = fileRead(FORM.parseFile) />
          <cfset thisFileExt = TRIM(FORM.fileExt) />
        
        <cftry>

              <cfset parsedObj= new components.parseFile() />

              <cfset parsedText = parsedObj.getFile (fileExt = thisFileExt, theFile = thisFile) />
  
              <div class="alert alert-success" role="alert" id="successDiv" style="margin:30px auto; width: 800px;">
                  <cfoutput>#parsedText#</cfoutput>
              </div>

        <cfcatch>
            <cfdump var="#cfcatch#" />
        </cfcatch>

        </cftry>

        <cfelse>
          <div class="alert alert-danger" role="alert" id="errorDiv" style="margin:30px auto; width: 800px;">No File was selected.</div>
        </cfif>

        
            
        </div>

        
  
        
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script
  src="//code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
 
  <script src="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

</body>

</html>