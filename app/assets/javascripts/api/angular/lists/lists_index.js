(function() {
  'use strict';

  angular
    .module('app')
    .controller('ListIndex', ListIndex);

  ListIndex.$inject = ['listAPI', '$scope'];

  function ListIndex(listAPI, $scope) {

    var vm = this;
    // Methods for view
    vm.load = load;
    vm.create = create;

    function load(){
      listAPI.index(function(data) {
        vm.lists = data;
      }, function (errors) {
        console.log('errors', errors);
      });
    }

    function create(response){
      listAPI.create({list: response},function(data){
        load();
        $('#newListModal').modal('hide');
        $scope.list = null;
      }, function(errors) {
          console.log('errors', errors);
      });
    }

  }
})();
