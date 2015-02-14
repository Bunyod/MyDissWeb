describe 'account section', ->
  beforeEach module('uzhotels.account')
  it 'should have a dummy test', inject(->
    expect(true).toBeTruthy()
  )
#describe 'LoginCtrl', ->
#  beforeEach module('uzhotels.login')
#
#  beforeEach inject (_$rootScope_, _$controller_, _$q_) ->
#    @$rootScope = _$rootScope_
#    @$controller = _$controller_
#    @$state = {go: (state) -> @current = {name: state}}
#    @$q = _$q_
#
#  describe 'loginSubmit', ->
#    it 'should change state to stats upon correct login', ->
#      $q = @$q
#      LoginSvc =
#        login: (login, password) ->
#          defer = $q.defer()
#          defer.resolve("OK")
#          defer.promise
#
#      $scope =
#        login: 'test@nomail.domain'
#        password: '123'
#
#      @$controller 'LoginCtrl', {$scope, @$state, LoginSvc}
#      $scope.loginSubmit()
#      @$rootScope.$digest()
#      expect(@$state.current.name).toEqual('stats')
#
#describe 'LoginSvc', ->
#  beforeEach module('uzhotels.login')
#
#  beforeEach inject ($injector) ->
#    @$injector = $injector
#    @$httpBackend = $injector.get('$httpBackend')
#
#  describe 'login', ->
#    it 'should pass login and password to server URL', ->
#      service = @$injector.get('LoginSvc', {'$http': @$httpBackend})
#
#      @$httpBackend.expectPOST(
#        'assets/server-stub/account/login.json',
#        {login: 'testlogin', password: 'testpassword'}).respond(200, '')
#
#      service.login('testlogin', 'testpassword')
#      @$httpBackend.flush()
