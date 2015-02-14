angular.module('uzhotels.login', ['ui.router'])

.config ($stateProvider) ->
  $stateProvider.state 'login',
    url: '/login'
    views:
      main:
        controller: 'LoginCtrl'
        controllerAs: 'loginCtrl'
        templateUrl: 'login/login.tpl.html'
    data:
      pageTitle: 'Login'
