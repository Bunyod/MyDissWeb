angular.module('uzhotels', [
  'templates-app'
  'ui.router'
  'templates-common'
  'uzhotels.about'
  'uzhotels.account'
  'uzhotels.login'
])
.config(($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/login'
)
.run(->)
.controller 'AppCtrl', ($scope, $location) ->
  $scope.$on '$stateChangeSuccess', (event, toState,
                                     toParams, fromState, fromParams) ->
    if angular.isDefined(toState.data.pageTitle)
      $scope.pageTitle = toState.data.pageTitle + ' | WelcomeUZ'
