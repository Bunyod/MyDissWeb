# The `src/app/login` Directory

## Overview

```
src/
  |- app/
  |  |- login/
  |  |  |- login.js
  |  |  |- login.less
  |  |  |- login.spec.js
  |  |  |- login.tpl.html
```

- `login.js` - defines the module.
- `login.less` - module-specific styles; this file is imported into
  `src/less/main.less` manually by the developer.
- `login.spec.js` - module unit tests.
- `login.tpl.html` - the route template.

## `login.js`

This boilerplate is too simple to demonstrate it, but `src/app/login` could have
several sub-folders representing additional modules that would then be listed
as dependencies of this one.  For example, a `note` section could have the
submodules `note.create`, `note.delete`, `note.search`, etc.

Regardless, so long as dependencies are managed correctly, the build process
will automatically take take of the rest.

The dependencies block is also where component dependencies should be
specified, as shown below.

```js
angular.module( 'uzhotels.login', [
  'ui.router',
  'titleService',
  'plusOne'
])
```

Each section or module of the site can also have its own routes. AngularJS will
handle ensuring they are all available at run-time, but splitting it this way
makes each module more self-contained. We use [ui-router](https://github.com/angular-ui/ui-router) to create
a state for our 'login' page. We set the url we'd like to see in the address bar
as well as the controller and template file to load. Specifying "main" as our view
means the controller and template will be loaded into the <div ui-view="main"/> element
of the root template (aka index.html). Read more over at the [ui-router wiki](https://github.com/angular-ui/ui-router/wiki).
Finally we add a custom data property, pageTitle, which will be used to set the page's
title (see the app.js controller).

```js
.config(function config( $stateProvider ) {
  $stateProvider.state( 'login', {
    url: '/login',
    views: {
      "main": {
        controller: 'LoginCtrl',
        templateUrl: 'login/login.tpl.html'
      }
    },
    data:{ pageTitle: 'Login' }
  });
})
```

And of course we define a controller for our route, though in this case it does
nothing.

```js
.controller( 'LoginCtrl', function LoginController( $scope ) {
})
```
