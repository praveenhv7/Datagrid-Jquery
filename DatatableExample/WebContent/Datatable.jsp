<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<script type="text/javascript" src="jquery-2.1.4.js"></script>
<script type="text/javascript" src="datatables.js"></script>
<script type="text/javascript" src="buttons.html5.js"></script>
<link rel="stylesheet" href="jquery.dataTables.min.css">
<link rel="stylesheet" href="buttons.dataTables.min.css">
<script type="text/javascript">
$(function() {
    $("#tabs").tabs();
  });


$(document).ready(function() {
    $('#example').DataTable( {
        "dom": 'Bfrtip',
        "buttons": [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ],
        "processing": true,
        "serverSide": true,
        "ajax": {
        	"url": "/DatatableExample/DatatableValues",
        	"type": "POST"
        	
        	},
        "columns": [
                    { "data": "name" },
                    { "data": "position" },
                    { "data": "office" },
                    { "data": "extn" },
                    { "data": "start_date" },
                    { "data": "salary" }
                ]
        
    } );
} );



</script>
</head>
<body>

<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Leg 0/Leg 1</a></li>
    <li><a href="#tabs-2">Leg 2</a></li>
  </ul>
  <div id="tabs-1">
    <p>
    ORG :<input type="text"> 
    
    </p>
  </div>
  <div id="tabs-2">
    <p>
    ORG :<input type="text"> 
    Route Code :<input type="text"> 
    </p>
  </div>
  
</div>


<table id="example" class="display" width="100%">
				<thead>
					<tr>
						<th>Name</th>
						<th>Position</th>
						<th>Office</th>
						<th>Age</th>
						<th>Start date</th>
						<th>Salary</th>
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th>Name</th>
						<th>Position</th>
						<th>Office</th>
						<th>Age</th>
						<th>Start date</th>
						<th>Salary</th>
					</tr>
				</tfoot>

				
		</table>
</body>
</html>