app = angular.module('statsApp', [])

app.controller 'PlayersController', [ '$scope', 'Player', ($scope, Player) ->
  players = Player.all()
]

app.controller 'PlayerController', [ '$scope', 'Player', ($scope, Player) ->
  Player.find(1).success (player) ->
    $scope.player = player
]

app.factory 'Player', ['$http', ($http) ->
  all = ->
    $http.get("/players.json")

  find = (id) ->
    $http.get("/players/#{id}.json")

  return {
    all: all,
    find: find
  }
]
