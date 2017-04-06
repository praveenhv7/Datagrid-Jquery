<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src = "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>






</head>
<body>

<!-- 
<div ng-app = "notMainApp"  ng-init="countries=[{locale:'EN-US'},{locale:'EN-GB'}];quantity = 1;cost = 30; student = {firstname:'Mahesh',lastname:'Parashar',rollno:101};marks = [80,90,75,73,60]">

Name:<input type="text" ng-model="name" >
Hello! <span ng-bind="name"></span>
<input type="text" ng-value="name" >
<ol>
<li ng-repeat="country in countries">
 {{'Country :'+country.locale}} </li>

</ol>
locale option
<select>
<option ng-repeat="country in countries" ng-value="{{country.locale}}">{{country.locale}}</option>

</select>

<p>Hello {{student.firstname + " " + student.lastname}}!</p>
         <p>Expense on Books : {{cost * quantity}} Rs</p>
         <p>Roll No: {{student.rollno}}</p>
         <p>Marks(Math): {{marks[3]}}</p>
         
        

</div>

 -->


<div ng-app = "mainApp" ng-controller = "studentController">
         Enter first name: <input type = "text" ng-model = "studentD.firstName"><br><br>
         Enter last name: <input type = "text" ng-model = "studentD.lastName"><br>
         <br>
         
         You are entering: {{studentD.fullName()}}
     <input type = "text" ng-model = "subjectName">
         
      			   <ul>
                     <li ng-repeat = "subject in studentD.subjects | filter: subjectName |orderBy:'marks'">
                        {{ subject.name + ', marks:' + subject.marks }}
                     </li>
                  </ul>
         
         
      </div>

<script>
         var mainApp = angular.module("mainApp", []);
         
         mainApp.controller('studentController', function($scope) {
            $scope.studentD = {
               firstName: "Mahesh",
               lastName: "Parashar",
               fees:500,
               
               fullName: function() {
                  var studentObject;
                  studentObject = $scope.studentD;
                  return studentObject.firstName + " " + studentObject.lastName;
               },

            subjects:[
                      {name:'Physics',marks:70},
                      {name:'Chemistry',marks:80},
                      {name:'Math',marks:65}
                   ]
    			
            
            };
         });
      </script>

</body>
</html> 