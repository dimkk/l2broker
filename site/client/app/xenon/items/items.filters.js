'use strict';

angular.module('siteApp')
  .filter('median', function () {
    return function (input, prop) {
      var median = findMedian(input[prop], 'price');
      if (!median) median = 'N/A';
      return median;
    };
  });

function findMedian(data, prop) {

    // extract the .values field and sort the resulting array
    var m = data.map(function(v) {
        return v[prop];
    }).sort(function(a, b) {
        return a - b;
    });

    var middle = Math.floor((m.length - 1) / 2); // NB: operator precedence
    if (m.length % 2) {
        return m[middle];
    } else {
        return (m[middle] + m[middle + 1]) / 2.0;
    }
}