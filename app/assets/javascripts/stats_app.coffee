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

app.directive 'fpbCircleStat', ->
  return {
    restrict: 'E'
    template: ''
    scope:
      player: '='
    link: (scope, element, attrs) ->
      scope.$watch 'player', (newPlayer, oldPlayer) ->
        return if !newPlayer || oldPlayer == newPlayer

        attrs.part = newPlayer[attrs['stat']]
        attrs.total = newPlayer.team[attrs['stat']]
        attrs.text ||= ""
        attrs.dimension ||= 250
        $(element).circliful attrs
  }
