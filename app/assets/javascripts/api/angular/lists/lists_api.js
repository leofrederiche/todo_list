(function() {
  'use strict';

  angular
  .module('app')
  .factory('listAPI', listAPI);

  listAPI.$inject = ['$resource'];

  function listAPI($resource){
    return $resource('', {id: '@id'}, {
      index: {url: '/api/v1/lists', method: 'GET', isArray: true},
      // new: {url: '/api/users/new', method: 'GET'},
      // create: {url: '/api/users', method: 'POST'},
      // edit: {url: '/api/users/:id/edit', method: 'GET'},
      // update: {url: '/api/users/:id', method: 'PATCH'},
      // destroy: {url: '/api/users/:id', method: 'DELETE'}
    });
  }
})();
