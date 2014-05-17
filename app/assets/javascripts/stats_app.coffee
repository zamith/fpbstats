app = angular.module('statsApp', [])

app.controller 'PlayersController', [ '$scope', ($scope) ->
  $scope.players = [
    { name: "Pedro Pinto", ppg: "12.0" },
    { name: "Seth Doliboa", ppg: "15.0" }
  ]
]
