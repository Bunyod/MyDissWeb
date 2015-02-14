angular.module('uzhotels.about', ['ui.router'])

.config ($stateProvider) ->
  $stateProvider.state 'about',
    url: '/about'
    views:
      main:
        templateUrl: 'about/about.tpl.html'
    data:
      pageTitle: "About"
