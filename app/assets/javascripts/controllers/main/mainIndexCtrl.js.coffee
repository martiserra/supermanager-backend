@IndexCtrl = ($scope, $location) ->
  $scope.data = 
    teams : [{id: 1, code: 2198, name: 'SuperTeam 1', points: 129, position: 12, balance: 7439000}, {id: 2, code: 1973, name: 'SuperTeam 2', points: 153, position: 8, balance: 8503999}]

  $scope.viewTeam = (teamId) ->
    $location.url('/teams/' + teamId)
