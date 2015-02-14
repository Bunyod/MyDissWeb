angular.module('uzhotels.account', [
  'ui.router'
])
.config ($stateProvider) ->
  $stateProvider.state 'account',
    url: '/account'
    views:
      main:
        controller: 'MyAccountCtrl'
        templateUrl: 'account/account.tpl.html'
      'logout@account':
        controller: 'LogoutCtrl'
        templateUrl: "logout/logout.tpl.html"
    data:
      pageTitle: 'My account'

.controller 'MyAccountCtrl', class
  constructor: ($scope, $state, MyAccountSvc) ->
    login = $scope.login
    $scope.user = {}
    MyAccountSvc.myaccount(login)
    .then (resp) ->
      $scope.user = angular.fromJson(resp.data)
    , (err) ->
      console.log(err)

.service 'MyAccountSvc', class
  constructor: ($http) ->
    @myaccount = (login) ->
      $http.post("assets/server-stub/account/myaccount.json", {login})
