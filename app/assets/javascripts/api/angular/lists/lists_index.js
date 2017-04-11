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
    vm.show = show;

    function load(){
      $('.loading').css('display', 'block');
      listAPI.index(function(data) {
        vm.lists = data;
        $('.loading').css('display', 'none');
      }, function (errors) {
        console.log('Error on Load ->', errors);
      });
    }

    function create(response){
      listAPI.create({list: response},function(data){
        load();
        $('#newListModal').modal('hide');
      }, function(errors) {
          console.log('Error on Create ->', errors);
      });
    }

    function show(response){
      var params = {id: response};
      listAPI.show(params, function(data){
        $scope.list = data;
      }, function(errors) {
        console.log('Error on Query ->', errors);
      });
    }

  }
})();
