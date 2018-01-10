function copyarr(arr){
  var newarr = [];
  for(var i = 0; i < arr.length; i++){
    newarr[i] = arr[i];
  }return newarr;
}

var a= [0,1,2,3,4];
alert(a);
var b = copyarr(a);
alert(b);

a[5]=5;
alert(b);
