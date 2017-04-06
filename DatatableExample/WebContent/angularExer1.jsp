<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src = "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script type="text/javascript" src="jquery-2.1.4.js"></script>
<script type="text/javascript" src="Bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
</head>
<body class="">



<div ng-app="confusionApp" ng-controller="menuController as menuCtrl">

<div class="container">

<div class="tab-content">
               <ul class="media-list tab-pane fade in active">
                   
  					<ul class="nav nav-pills" role="tablist">
                    <li role="presentation"
                     ng-class="{active:menuCtrl.isSelected(1)}">
                    <a ng-click="menuCtrl.select(1)"
                     aria-controls="all menu"
                     role="tab">The Menu</a></li>
                    <li role="presentation"
                     ng-class="{active:menuCtrl.isSelected(2)}">
                    <a ng-click="menuCtrl.select(2)"
                     aria-controls="appetizers"
                     role="tab">Appetizers</a></li>
                    <li role="presentation"
                     ng-class="{active:menuCtrl.isSelected(3)}">
                    <a ng-click="menuCtrl.select(3)"
                     aria-controls="mains"
                     role="tab">Mains</a></li>
                    <li role="presentation"
                     ng-class="{active:menuCtrl.isSelected(4)}">
                    <a  ng-click="menuCtrl.select(4)"
                     aria-controls="desserts"
                     role="tab">Desserts</a></li>
                </ul>
                
                 
                
</ul>
<p>Sort By: <input type="text" ng-model="menuCtrl.sortData">
<div class="col-xs-12">
               <ul class="media-list">
                <li class="media" ng-repeat="dish in menuCtrl.dishes|orderBy:menuCtrl.sortData|filter:menuCtrl.filtText"> <!-- filter:menuCtrl.filtText -->
                    <div class="media-left media-middle">
                        <a href="#">
                        <img class="media-object img-thumbnail"
                         ng-src={{dish.image}} alt="Uthappizza">
                        </a>
                    </div>
                    <div class="media-body">
                        <h2 class="media-heading">{{dish.name}}
                         <span class="label label-danger">{{dish.label}}</span>
                         <span class="badge">{{dish.price | currency}}</span></h2>
                        <span>{{dish.description}}</span>
                        <div ng-repeat="comment in dish.comment">
                        <span>Comment: {{comment.coms}}</span>
                        </div>
                        
                    </div>
                </li>
            </ul>
            </div>


</div>
</div>

</div>






</body>
 <script>

        var app = angular.module('confusionApp',[]);
        app.controller('menuController', function() {
        	this.tab = 1;
        	this.filtText = '';
        	 var dishes=[
                         {
                           name:'Uthapizza',
                           image: 'images/uthapizza.png',
                           category: 'mains',
                           label:'Hot',
                           price:'4.99',
                           description:'A unique combination of Indian Uthappam (pancake) and Italian pizza, topped with Cerignola olives, ripe vine cherry tomatoes, Vidalia onion, Guntur chillies and Buffalo Paneer.',
                           comment: [{coms:'filling'}]
                        },
                        {
                           name:'Zucchipakoda',
                           image: 'images/zucchipakoda.png',
                           category: 'appetizer',
                           label:'',
                           price:'1.99',
                           description:'Deep fried Zucchini coated with mildly spiced Chickpea flour batter accompanied with a sweet-tangy tamarind sauce',
                           comment: [{coms:'amazing'}]
                        },
                        {
                           name:'Vadonut',
                           image: 'images/vadonut.png',
                           category: 'appetizer',
                           label:'New',
                           price:'1.99',
                           description:'A quintessential ConFusion experience, is it a vada or is it a donut?',
                           comment: [{coms:'my fav'}]
                        },
                        {
                           name:'ElaiCheese Cake',
                           image: 'images/elaicheesecake.png',
                           category: 'dessert',
                           label:'',
                           price:'2.99',
                           description:'A delectable, semi-sweet New York Style Cheese Cake, with Graham cracker crust and spiced with Indian cardamoms',
                           comment: [{coms:'nice and yummy'},{coms:'enjoyed it'}]
                        }
                        ];
             var myComment="this is my comment";

            this.dishes = dishes;
            this.comment=myComment;

            this.select = function(setTab) {
                this.tab = setTab;

                if (setTab === 2)
                    this.filtText = "appetizer";
                else if (setTab === 3)
                    this.filtText = "mains";
                else if (setTab === 4)
                    this.filtText = "dessert";
                else
                    this.filtText = "";
            }

            this.isSelected = function (checkTab) {
                return (this.tab === checkTab);
            }

            
            
        });

    </script>
</html>