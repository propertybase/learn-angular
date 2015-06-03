'use strict'

angular.module('myApp', [])

angular
  .module('myApp')
  .controller 'testController', ($scope) ->
    console.log "Hallo World."

    $scope.myVar = "This is a very good text."


    $scope.changeText = ->
      $scope.myVar = "Neuer Text!"
