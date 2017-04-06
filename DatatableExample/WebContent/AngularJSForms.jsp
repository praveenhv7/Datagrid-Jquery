<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src = "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha256-KXn5puMvxCw+dAYznun+drMdG1IFl3agK0p/pqT9KAo= sha512-2e8qq0ETcfWRI4HJBzQiA3UoyFk6tbNyG+qSaIBZLyW9Xf3sWZHN/lxe9fTh1U45DpPf07yj94KsUHHWe4Yk1A==" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw==" crossorigin="anonymous">

<script type="text/javascript">
var app=angular.module('confusionApp',[]);


app.controller('FormController',['$scope' ,function($scope) {

	$scope.formData={FirstName:'',LastName:'',agree:false,email:''};

	$scope.Data=[{firstName:'Praveen',lastName:'h v'},{firstName:'Naveen',lastName:'h v'}];

	$scope.formSubmit=function(){
		console.log('submit');

		console.log($scope.formData.FirstName)
		
		$scope.Data=$scope.Data.concat([{firstName:$scope.formData.FirstName,lastName:$scope.formData.LastName}]);

		
		
		};
	
}]);

</script>

</head>
<body  ng-app="confusionApp">
<div ng-controller="FormController">
<form name="dataForm" ng-submit="formSubmit()" novalidate role="form" class="form-horizontal" >

 <div class="form-group" ng-class="{ 'has-error' : dataForm.FirstName.$error.required && !dataForm.FirstName.$pristine }">
<label for="FirstName" class="col-sm-2 control-label">First Name:</label>
<div class="col-sm-10">
<input type="text" class="form-control" ng-model="formData.FirstName" id="FirstName" name="FirstName" required="required" >
<span ng-show="dataForm.FirstName.$error.required && !dataForm.FirstName.$pristine" class="help-block">Your First name is required.</span>
 </div>
 </div>

<div class="form-group" ng-class="{ 'has-error' : dataForm.LastName.$error.required && !dataForm.LastName.$pristine }">
<label for="LastName" class="col-sm-2 control-label">LastName:</label>
<div  class="col-sm-10">
<input type="text" class="form-control" ng-model="formData.LastName" id="LastName" name="LastName" required="required">
<span ng-show="dataForm.LastName.$error.required && !dataForm.LastName.$pristine" class="help-block">Your Last Name is Required</span>
</div>
</div>



<input type="submit"  value="Submit" ng-disabled="!dataForm.$valid">
<div>required {{dataForm.FirstName.$error.required}}</div>
<div>form details: {{dataForm.$valid}} </div>
<div>First Name : {{dataForm.FirstName.$error.required}}</div>
<div>pristine {{dataForm.FirstName.$pristine}}</div>
</form>

<p>
Entered First Name:<span>{{formData.FirstName}} {{ formData.LastName|uppercase}}</span>
<p>

<div class="container">
<div class="rows" ng-repeat="finalData in Data|orderBy:'firstName'">
<div class="col-sm-offset-1" class="col-sm-1">
<ul class="unstyled">
<li>{{finalData.firstName}} {{finalData.lastName|uppercase}}</li>
</ul>

</div>

</div>


</div>


</div>




</body>
</html>