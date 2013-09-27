@TeamCtrl = ($scope, $routeParams) ->

  $scope.data = 
    team: {id: 1, code: 2198, name: 'SuperTeam 1', points: 129, position: 12, balance: 7439000}

  $scope.data.teamId = $routeParams.teamId
