angular.module('uzhotels.login')

.service 'LoginSvc', class
  constructor: ($http) ->
    @login = (login, password) ->
      $http.post("assets/server-stub/account/login.json", {login, password})
