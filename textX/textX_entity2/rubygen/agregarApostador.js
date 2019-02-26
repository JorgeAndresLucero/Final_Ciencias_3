'use strict';

/**
 * @ngdoc function
 * @name nameApp.controller:AgregarApostadorCtrl
 * @description
 * # AgregarApostadorCtrl
 * Controller of the nameApp
 */
angular.module('nameApp')
  .controller('AgregarApostadorCtrl', function ($scope, $http) {
    $scope.title = 'Apostador';
    $scope.message = 'Agregar Apostador';

      $http.get(api_path + 'nombre?limit=0')
      .then(function(response) {
        $scope.nombre = response.data;
      });
      $http.get(api_path + 'documento?limit=0')
      .then(function(response) {
        $scope.documento = response.data;
      });
      $http.get(api_path + 'edad?limit=0')
      .then(function(response) {
        $scope.edad = response.data;
      });
      $http.get(api_path + 'num_perro?limit=0')
      .then(function(response) {
        $scope.num_perro = response.data;
      });

    $scope.add = function(){
      if($scope.Apostador.nombre == null){
        return;
      }
      if($scope.Apostador.documento == null){
        return;
      }
      if($scope.Apostador.edad == null){
        return;
      }
      if($scope.Apostador.num_perro == null){
        return;
      }
    var data = {
        nombre: $scope.Apostador.nombre,
        documento: $scope.Apostador.documento,
        edad: $scope.Apostador.edad,
        num_perro: $scope.Apostador.num_perro,
    };
    $http.post(api_path + 'Apostador',data);
    window.location.href = '#/Apostador';
  };

  $scope.cancel = function(){
    window.location.href = '#/Apostador';
  };
  });