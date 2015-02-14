describe 'LoginSvc', ->
  beforeEach module('uzhotels.login')

  beforeEach inject (@$injector, @$httpBackend) ->

  describe 'login', ->
    it 'should pass login and password to server URL', ->
      service = @$injector.get('LoginSvc', {'$http': @$httpBackend})

      @$httpBackend.expectPOST(
        'assets/server-stub/account/login.json',
        {login: 'testlogin', password: 'testpassword'}).respond(200, '')

      service.login('testlogin', 'testpassword')
      @$httpBackend.flush()
