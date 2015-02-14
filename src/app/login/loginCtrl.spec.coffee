describe 'LoginCtrl', ->
  beforeEach module('uzhotels.login')

  beforeEach inject (@$rootScope, @$controller, @$q) ->
    @$state = {go: (state) -> @current = {name: state}}

  describe 'loginSubmit', ->
    it 'should change state to stats upon correct login', ->
      $q = @$q
      LoginSvc =
        login: (login, password) ->
          defer = $q.defer()
          defer.resolve("OK")
          defer.promise

      $scope =
        login: 'test@nomail.domain'
        password: '123'

      loginCtrl = @$controller 'LoginCtrl', {@$state, LoginSvc}
      loginCtrl.loginSubmit()
      @$rootScope.$digest()
      expect(@$state.current.name).toEqual('stats')
