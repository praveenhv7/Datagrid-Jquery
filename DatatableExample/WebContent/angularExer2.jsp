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
</head>
<body>

  <div class="container" ng-app="confusionApp" ng-controller="dishDetailController">
        <div class="row row-content">
            <div class="col-xs-12">
                
                <div class="media">
  					<div class="media-left">
   						 <a href="#">
     					 <img class="media-object" ng-src="{{dish.image}}" alt="Generic placeholder image">
    					</a>
 					 </div>
 					 
 					 <div class="media-body">
                        <h2 class="media-heading">{{dish.name}}
                         <span class="label label-danger">{{dish.label}}</span>
                         <span class="badge">{{dish.price | currency}}</span></h2>
                        <span>{{dish.description}}</span>
                        
                        
                    </div>
 					 
 					 </div>
                
            </div>
            <div class="col-xs-9 col-xs-offset-1">
               <div> <span style="font-size:20px;font-weight: bold; ">Customer Comments  </span> &nbsp; Sort by: <input type="text" ng-model="sortBy"> </div>
                <blockquote ng-repeat="comment in dish.comments|orderBy:sortBy">
                		<div>{{comment.rating}}</div>
                        <span>{{comment.comment}}</span>
                        <footer>{{comment.author}}{{", "}} {{comment.date|date:'mediumDate'}}</footer>
                        </blockquote>
                
            </div>
        </div>

    </div>
    
    <div class="container" style="border:aqua;width: 70%"  ng-app="confusionApp">
     <h3 class="bg-info">FeedBack</h3>
    <form name="feedbackForm" >
   
    <div class="row">
       <div class="col-sm-2" align="right">
          <span>First Name :</span>
  	   </div>
       <div class="col-sm-3">
   		 <input type="text" required="required" style="width: 100%">
   	   </div>
   	   <div class="col-sm-2" align="right">
   	   <span>Last Name :</span>
   	   </div>
   	   <div class="col-sm-3">
   	   <input type="text" required="required" style="width: 100%">
   	   </div>
   	   </div>
   	   
   	   <div class="row">
   	   <div class="col-sm-12">&nbsp;</div>
   	   </div>
   	   
   
    
    
     <div class="row">
       <div class="col-sm-2" align="right">
          <span>Email:</span>
  	   </div>
       <div class="col-sm-3">
   		 <input type="text" required="required" width="100%">
   	   </div>
   	   <div class="col-sm-2" align="right">
          <span>Phone Number:</span>
  	   </div>
       <div class="col-sm-3">
   		 <input type="text" required="required" width="100%">
   	   </div>
   	   </div>
    
    
    <div class="row">
       <div class="col-sm-2" align="right">
          <span>Rating:</span>
  	   </div>
       <div class="col-sm-3">
   		 1:<input type="radio" name="rating" value="1" required="required">
   		 2:<input type="radio" name="rating" value="2" required="required">
   		 3:<input type="radio" name="rating" value="3" required="required">
   		 4:<input type="radio" name="rating" value="4" required="required">
   		 5:<input type="radio" name="rating" value="5" required="required" checked="checked">
   	   </div>
    </div>
    
     <div class="row">
       <div class="col-sm-2" align="right">
          <span>Comments</span>
  	   </div>
       <div class="col-sm-3">
   		 <textarea rows="5" cols="100%"></textarea>
   	   </div>
    </div>
    
    </form>
    
     </div>
    
    

    
    <script>

        var app = angular.module('confusionApp',[]);
        
        app.controller('dishDetailController',['$scope',function($scope) {

        	$scope.dish={
                          name:'Uthapizza',
                          image: 'images/uthapizza.png',
                          category: 'mains', 
                          label:'Hot',
                          price:'4.99',
                          description:'A unique combination of Indian Uthappam (pancake) and Italian pizza, topped with Cerignola olives, ripe vine cherry tomatoes, Vidalia onion, Guntur chillies and Buffalo Paneer.',
                           comments: [
                               {
                                   rating:5,
                                   comment:"Imagine all the eatables, living in conFusion!",
                                   author:"John Lemon",
                                   date:"2012-10-16T17:57:28.556094Z"
                               },
                               {
                                   rating:4,
                                   comment:"Sends anyone to heaven, I wish I could get my mother-in-law to eat it!",
                                   author:"Paul McVites",
                                   date:"2014-09-05T17:57:28.556094Z"
                               },
                               {
                                   rating:3,
                                   comment:"Eat it, just eat it!",
                                   author:"Michael Jaikishan",
                                   date:"2015-02-13T17:57:28.556094Z"
                               },
                               {
                                   rating:4,
                                   comment:"Ultimate, Reaching for the stars!",
                                   author:"Ringo Starry",
                                   date:"2013-12-02T17:57:28.556094Z"
                               },
                               {
                                   rating:2,
                                   comment:"It's your birthday, we're gonna party!",
                                   author:"25 Cent",
                                   date:"2011-12-02T17:57:28.556094Z"
                               }
                               
                           ]
                    };
            
            
            
        }]);

    </script>




</body>
</html>