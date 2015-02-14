angular.module('uzhotels.login')

.controller 'LoginCtrl', class
  constructor: ($state, LoginSvc) ->
    vm = @
    vm.loginSubmit = ->
      LoginSvc.login(vm.login, vm.password)
      .then (resp) ->
        $state.go('stats')
      , (err) ->
        console.log(err)
