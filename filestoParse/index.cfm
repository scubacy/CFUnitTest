
<cfif StructKeyExists(FORM, "parseFile")>
    <cffile action="read" file="#FORM.parseFile#" variable="thefile">
    <cfdump var="#thefile#" abort="true"/>
<cfelse>
  No file
</cfif>