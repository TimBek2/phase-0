
// Sum Function
function sum(numberArray){
  var sumOfArray = numberArray.reduce(function(prevval, currentval) { return prevval + currentval; }, 0);
  return sumOfArray
}

array = [1,2,3,4,5,6,7,8]
console.log(sum(array));


// Mean Function

function mean(numberArray){
  var sumOfArray = 0
  var arrayLength = numberArray.length

  for(var i = 0; i < arrayLength ;i++){
    sumOfArray += numberArray[i]
  };
  var mean = sumOfArray / arrayLength
  return mean
}

// array = [1,2,3,4,5,6,7,8]
// console.log(mean(array))


// Medium Function

function medium(numberArray){
var sizeofArray = numberArray.length
  if(sizeofArray % 2 !== 0){
    var oddCenterIndex = Math.round(sizeofArray / 2);
    return oddCenterIndex;
  } else if(sizeofArray % 2 === 0){
    var evenCenterIndex1 = Math.ceil(sizeofArray / 2);
    var evenCenterIndex2 = Math.floor(sizeofArray / 2); 
    return  (evenCenterIndex1 + evenCenterIndex2) / 2
  }

}
// array = [1,2,3,4,5,6,7,8,3,4]
// console.log(medium(array));


/*
======================================
            User Stories
======================================
As a user, I want to be able to take the sum of an array of numbers when I call a function called sum.
As a user, I want to be able to take the mean of an array of numbers when I call a function called mean.
As a user, I want to be able to take the median of an array of numbers when I call a function called medium.



*/










