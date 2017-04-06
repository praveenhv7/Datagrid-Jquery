<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<script src="jquery.js"></script>
<script src="jquery.dataTables.js"></script>
<script type="text/javascript">



var giCount = 2;

$(document).ready(function() {
  $('#example').dataTable().fnAddData( [
    "praveen"]
  );
} );
 
function fnClickAddRow() {
  $('#example').dataTable().fnAddData( [
    "praveen"]
  );
     
  giCount++;
}

</script>

</head>
<body>
<table id="example">
  <thead>
  <tr><th>name</th>
  </tr> </thead>
  
  <tbody>
  </tbody>

          
      </table>

        


</body>
</html>