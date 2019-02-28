
<cfif StructKeyExists(FORM, "parseFile")>
    <cffile action="read" file="#FORM.parseFile#" variable="thefile">
    <cfdump var="#thefile#" abort="false"/>

    <cfset fileArray = ListtoArray(thefile)/>
    <cfdump var="#fileArray#" abort="false"/>

<cfelse>
  No file
</cfif>