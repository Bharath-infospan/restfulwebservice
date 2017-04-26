<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
	<script type="text/javascript">
	var sample=angular.module("sample",[]);
	sample.controller("emp",["$scope",'$http',function($scope,$http){
	$scope.a=10;
	$scope.b=10;
	$scope.sum=function(){
		$http({
			url:'http://localhost:8080/Restfulexample/rest/hello/add/'+$scope.a + '/' +$scope.b,
		    method: 'GET'
		}).then(function(resp){
			
			$scope.sum=resp.data;
		},function(resp){
		
	});
};
	}])
	</script>
</head>
<body ng-app="sample">
<div ng-controller="emp">
value of a is {{a}}
but you can change <input type=text ng-model="a"/><br>

value of b is {{b}}
but you can change <input type=text ng-model="b"/><br>



Sum={{sum}}<br>
<button ng-click="sum()">calculate</button>

	</div>
</body>
</html>