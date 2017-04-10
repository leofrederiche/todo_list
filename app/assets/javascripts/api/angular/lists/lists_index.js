(function() {
  'use strict';

  angular
    .module('app')
    .controller('ListIndex', ListIndex);

  ListIndex.$inject = ['listAPI'];

  function ListIndex(listAPI) {

    var vm = this;
    // Methods for view
    vm.load = load();

    function load(){
      listAPI.index(function(data) {
        vm.lists = data;
      }, function (errors) {
        console.log('errors', errors);
      });
    }

  }
})();
