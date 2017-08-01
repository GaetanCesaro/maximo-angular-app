angular.module("MaximoApp", ["ngSanitize"]) // , "ngAnimate"
.controller("MaximoAppCtrl", function($scope, $location, $interval, $http) {

	$scope.maximoUrl = "http://swinpostenova01.colo.fr.sopra:9080/";
	$scope.maximoUser = "maxadmin";
	$scope.maximoPass = "maxadmin";
	$scope.osStructureWorkorder = "POC_WO";
	$scope.osStructureAsset = "POC_ASSET";
    
	$scope.filters = [
		{ attribute: 'LOCATION', label: 'Emplacement', value: '' }, 
		{ attribute: 'ASSETNUM', label: 'Actif', value: '' }, 
		{ attribute: 'STATUS', label: 'Statut', value: '' }
	];

	$scope.menus = [
		{ value: "HOME", label: 'Recherche', osStructure: null }, 
		{ value: "WO", label: 'Interventions', osStructure: $scope.osStructureWorkorder },
		{ value: "ASSET", label: 'Actifs', osStructure: $scope.osStructureAsset }
	];

	$scope.items = [];
	$scope.loading = false;

	$scope.getItems = function(url) {
		$scope.loading = true;
		$http.get(url)
		.then(function(response) {
			// Success
			$scope.content = response.data;
			$scope.statuscode = response.status;
			$scope.statustext = response.statustext; 
			//console.log(angular.toJson($scope.content));
			switch($scope.menuCourant.osStructure) {
				case $scope.osStructureWorkorder:
					$scope.items = $scope.content.QueryPOC_WOResponse.POC_WOSet.WORKORDER;
					break;
				case $scope.osStructureAsset:
					$scope.items = $scope.content.QueryPOC_ASSETResponse.POC_ASSETSet.ASSET;
					break;
			}
			$scope.loading = false;
		}, function(response) {
			// Failed
			$scope.content = "Something went wrong";
			$scope.loading = false;
			console.log(angular.toJson($scope.content));
		})
	}

	$scope.getItemsByFilters = function() {
		//var url = $scope.maximoUrl + "maxrest/rest/os/" + osStructure + "?_format=json&location=" + location;
		var url = $scope.maximoUrl + "maxrest/rest/os/" + $scope.menuCourant.osStructure + "?_format=json&historyflag=0";

		$scope.filters.forEach(function(filter) {	
			if (filter.value != '' && filter.value != null) {
				url = url + "&" + filter.attribute + "=" + filter.value
			}
		});

		console.log(url);

		url = url + "&_lid=" + $scope.maximoUser + "&_lpwd=" + $scope.maximoPass;
		$scope.getItems(url);

		//$scope.items = $scope.content.QueryMXWOResponse.MXWOSet.WORKORDER;
	}

	// Parcours 
	$scope.menuCourant = null;
	$scope.itemCourant = null;

	$scope.selectionMenu = function(menu) {
		$scope.menuCourant = menu;
		$scope.itemCourant = null;

		console.log(menu.value);

		$scope.getItemsByFilters();
	}

	$scope.selectionItem = function(item) {
		$scope.itemCourant = item;
		console.log($scope.itemCourant);
	}

	$scope.versWOItem = function(menu, item) {
		$location.path("/" + menu.value + "/" + item.Attributes.WONUM.content);
	}

	$scope.versASSETItem = function(menu, item) {
		$location.path("/" + menu.value + "/" + item.Attributes.ASSETNUM.content);
	}

	$scope.orderByMe = function(x) {
		$scope.myOrderBy = x;
	}
	
	$scope.$watch(function(){
		return $location.path();
	}, function(newPath) {
		var tabPath = newPath.split("/");
		var valMenu = "";
		if (tabPath.length > 1) {
			valMenu = tabPath[1];
			$scope.menus.forEach(function(item) {	
				if (item.value == valMenu) {
					$scope.selectionMenu(item);
				}
			});
		}

		if (tabPath.length > 2) {
			var idItem = tabPath[2];
			switch(valMenu) {
				case "WO":
					$scope.items.forEach(function(item) {	
						if (item.Attributes.WONUM.content == idItem) {
							$scope.selectionItem(item);
						}
					});
					break;
				case "ASSET":
					$scope.items.forEach(function(item) {	
						if (item.Attributes.ASSETNUM.content == idItem) {
							$scope.selectionItem(item);
						}
					});
					break;
			}
		}
	})

	// PAGINATION
	$scope.currentPage = 0;
    $scope.pageSize = 5;
    $scope.numberOfPages = function(){
        return Math.ceil($scope.items.length/$scope.pageSize);                
    }

	$scope.waitingItems = function(){
		return $scope.items.length == 0;
	}
})
.filter('startFrom', function() {
    return function(input, start) {
		if (input != null && input.length > 0) {
        	start = +start; //parse to int
        	return input.slice(start);
		}
    }
});